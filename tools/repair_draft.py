#!/usr/bin/env python3
"""Copy the pinned Laguna DFlash GGUF with Poolside's corrected metadata.

Only four metadata entries change. Tensor descriptors and all bytes from the
aligned tensor-data start through EOF are preserved. The source is read-only.
No inference engine or third-party Python package is used.

Usage:
  python repair_draft.py --source original.gguf --output corrected.gguf
  python repair_draft.py --source original.gguf --output corrected.gguf --verify-only

Existing output, receipt, and partial files are never intentionally replaced.
--verify-only re-reads both files and prints its report without writing files.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import struct
from dataclasses import dataclass
from datetime import datetime, timezone
from pathlib import Path


SOURCE_SHA256 = "94d5d6d93acb2dfb1209599bc099ebc5b30e959a3a1200dcaebfb01e3f480e43"
SOURCE_SIZE = 1_188_535_328
SOURCE_REPO = "https://huggingface.co/dev7a/Laguna-S-2.1-DFlash-GGUF"
OFFICIAL_REVISION = "19036076775e9ba6758595f78af99cb976ef8ff0"
OFFICIAL_URL = (
    "https://huggingface.co/poolside/Laguna-S-2.1-GGUF/resolve/"
    + OFFICIAL_REVISION
    + "/laguna-s-2.1-DFlash-BF16.gguf"
)
OFFICIAL_HEADER = {
    "repository_revision": OFFICIAL_REVISION,
    "artifact_url": OFFICIAL_URL,
    "http_range": "bytes=0-8388607",
    "range_sha256": "3d5dd439bd7719a73bd89dbe45ebd4ab765c1325f02528800823778ee1885199",
    "metadata_prefix_bytes": 3_678_257,
    "metadata_prefix_sha256": "41b65d4238c9e074aaab01df079dd7635726d6ccf092e1dfa30a02287dc0913c",
    "correction_discussion": "https://huggingface.co/poolside/Laguna-S-2.1-GGUF/discussions/12",
    "observed_utc_date": "2026-10-10",
}

# These include each key's GGUF string, type tag, and value, copied byte-for-byte
# from the pinned official header. GGUF type 4 is UINT32, 8 STRING, 9 ARRAY.
REPAIR_HEX = {
    "dflash.attention.sliding_window":
        "1f0000000000000064666c6173682e617474656e74696f6e2e736c6964696e675f77696e646f770400000000020000",
    "dflash.attention.sliding_window_pattern":
        "270000000000000064666c6173682e617474656e74696f6e2e736c6964696e675f77696e646f775f7061747465726e09000000040000000600000000000000010000000100000001000000010000000100000001000000",
    "dflash.rope.dimension_count":
        "1b0000000000000064666c6173682e726f70652e64696d656e73696f6e5f636f756e740400000080000000",
    "dflash.rope.scaling.type":
        "180000000000000064666c6173682e726f70652e7363616c696e672e747970650800000004000000000000006e6f6e65",
}
REPAIR_BYTES = {key: bytes.fromhex(value) for key, value in REPAIR_HEX.items()}
REPAIR_VALUES = {
    "dflash.attention.sliding_window": {"type": 4, "value": 512},
    "dflash.attention.sliding_window_pattern": {
        "type": 9, "value": {"item_type": 4, "items": [1, 1, 1, 1, 1, 1]},
    },
    "dflash.rope.dimension_count": {"type": 4, "value": 128},
    "dflash.rope.scaling.type": {"type": 8, "value": "none"},
}
READ_SIZE = 8 * 1024 * 1024
PREFIX_LIMIT = 16 * 1024 * 1024
SCALAR_FORMATS = {
    0: "B", 1: "b", 2: "H", 3: "h", 4: "I", 5: "i", 6: "f",
    7: "?", 10: "Q", 11: "q", 12: "d",
}


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


class Cursor:
    def __init__(self, data: bytes):
        self.data = data
        self.pos = 0

    def take(self, count: int) -> bytes:
        require(0 <= count <= len(self.data) - self.pos, "Truncated or oversized GGUF header")
        result = self.data[self.pos:self.pos + count]
        self.pos += count
        return result

    def number(self, fmt: str):
        return struct.unpack("<" + fmt, self.take(struct.calcsize("<" + fmt)))[0]

    def string(self, retain: bool = True):
        raw = self.take(self.number("Q"))
        return raw.decode("utf-8") if retain else None

    def value(self, kind: int, retain: bool = True):
        if kind == 8:
            return self.string(retain)
        if kind == 9:
            item_type = self.number("I")
            count = self.number("Q")
            require(item_type != 9, "Nested GGUF arrays are unsupported")
            require(count <= len(self.data) - self.pos, "Impossible GGUF array length")
            if not retain and item_type in SCALAR_FORMATS:
                self.take(count * struct.calcsize("<" + SCALAR_FORMATS[item_type]))
                return None
            values = [] if retain else None
            for _ in range(count):
                value = self.value(item_type, retain)
                if retain:
                    values.append(value)
            return {"item_type": item_type, "items": values} if retain else None
        require(kind in SCALAR_FORMATS, f"Unsupported GGUF value type {kind}")
        value = self.number(SCALAR_FORMATS[kind])
        return value if retain else None


@dataclass
class Header:
    version: int
    tensor_count: int
    entries: dict[str, bytes]
    values: dict[str, dict]
    descriptors: bytes
    alignment: int
    data_offset: int
    file_size: int


def read_header(path: Path) -> Header:
    with path.open("rb") as stream:
        data = stream.read(PREFIX_LIMIT)
    cursor = Cursor(data)
    require(cursor.take(4) == b"GGUF", "Not a little-endian GGUF file")
    version = cursor.number("I")
    require(version == 3, f"Only the pinned GGUF v3 artifact is supported; found v{version}")
    tensor_count = cursor.number("Q")
    metadata_count = cursor.number("Q")
    require(0 < tensor_count <= 10000 and 0 < metadata_count <= 100000, "Invalid GGUF counts")
    entries, values = {}, {}
    retained = set(REPAIR_BYTES) | {"general.alignment", "general.architecture", "dflash.block_count"}
    for _ in range(metadata_count):
        start = cursor.pos
        key = cursor.string()
        require(key not in entries, f"Duplicate metadata key: {key}")
        kind = cursor.number("I")
        value = cursor.value(kind, key in retained)
        entries[key] = data[start:cursor.pos]
        if key in retained:
            values[key] = {"type": kind, "value": value}

    descriptors_start = cursor.pos
    offsets = []
    names = set()
    for _ in range(tensor_count):
        name = cursor.string()
        require(name not in names, f"Duplicate tensor name: {name}")
        names.add(name)
        dimensions = cursor.number("I")
        require(1 <= dimensions <= 4, f"Invalid dimensions for {name}")
        for _ in range(dimensions):
            require(cursor.number("Q") > 0, f"Empty tensor: {name}")
        cursor.number("I")  # Preserve the quantization type without interpreting it.
        offsets.append(cursor.number("Q"))
    descriptors = data[descriptors_start:cursor.pos]
    alignment = values.get("general.alignment", {"value": 32})["value"]
    require(isinstance(alignment, int) and 0 < alignment <= 1024 * 1024, "Invalid alignment")
    require(alignment & (alignment - 1) == 0, "Alignment is not a power of two")
    data_offset = (cursor.pos + alignment - 1) // alignment * alignment
    size = path.stat().st_size
    require(data_offset <= len(data) and data_offset < size, "Invalid tensor data start")
    require(all(0 <= offset < size - data_offset and offset % alignment == 0 for offset in offsets),
            "Invalid tensor data offsets")
    require(values.get("general.architecture", {}).get("value") == "dflash", "Expected DFlash architecture")
    require(values.get("dflash.block_count", {}).get("value") == 6, "Expected six draft layers")
    require(tensor_count == 76, "Expected 76 draft tensors")
    return Header(version, tensor_count, entries, values, descriptors, alignment, data_offset, size)


def file_hash(path: Path, offset: int = 0) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        stream.seek(offset)
        while chunk := stream.read(READ_SIZE):
            digest.update(chunk)
    return digest.hexdigest()


def validate_source(source: Path) -> Header:
    require(source.stat().st_size == SOURCE_SIZE, "Source byte size does not match the pinned dev7a artifact")
    require(file_hash(source) == SOURCE_SHA256, "Source SHA256 does not match the pinned dev7a artifact")
    return read_header(source)


def verify_files(source: Path, output: Path) -> dict:
    # Independent of copying: re-open/re-parse both files, then re-read full file
    # and tensor-payload hashes. No digest is taken from the writer's buffers.
    before = validate_source(source)
    after = read_header(output)
    require(before.version == after.version and before.tensor_count == after.tensor_count,
            "GGUF version or tensor count changed")
    require(before.alignment == after.alignment, "Tensor alignment changed")
    require(before.descriptors == after.descriptors, "Tensor descriptors changed")
    require(set(after.entries) == set(before.entries) | set(REPAIR_BYTES), "Unexpected metadata key changes")
    for key, raw in before.entries.items():
        if key not in REPAIR_BYTES:
            require(raw == after.entries[key], f"Unrelated metadata changed: {key}")
    for key, expected in REPAIR_BYTES.items():
        require(after.entries[key] == expected, f"Corrected entry differs from official header: {key}")
        require(after.values[key] == REPAIR_VALUES[key], f"Corrected value differs: {key}")
    payload_bytes = before.file_size - before.data_offset
    require(after.file_size - after.data_offset == payload_bytes, "Tensor payload length changed")
    source_payload = file_hash(source, before.data_offset)
    output_payload = file_hash(output, after.data_offset)
    require(source_payload == output_payload, "Tensor payload bytes changed")
    return {
        "schema_version": 1,
        "verified_utc": datetime.now(timezone.utc).isoformat(),
        "operation": "DFlash metadata-only copy; no quantization or inference",
        "source": {"path": str(source), "repository": SOURCE_REPO,
                   "sha256": SOURCE_SHA256, "bytes": before.file_size,
                   "tensor_data_offset": before.data_offset},
        "output": {"path": str(output), "sha256": file_hash(output),
                   "bytes": after.file_size, "tensor_data_offset": after.data_offset},
        "official_metadata_provenance": OFFICIAL_HEADER,
        "metadata_before": {key: before.values.get(key) for key in REPAIR_BYTES},
        "metadata_after": {key: after.values[key] for key in REPAIR_BYTES},
        "official_metadata_entry_hex": REPAIR_HEX,
        "tensor_count": before.tensor_count,
        "tensor_descriptor_bytes": len(before.descriptors),
        "tensor_descriptor_sha256": hashlib.sha256(before.descriptors).hexdigest(),
        "tensor_payload_bytes": payload_bytes,
        "source_tensor_payload_sha256": source_payload,
        "output_tensor_payload_sha256": output_payload,
        "verified": {"source_matches_pinned_artifact": True,
                     "all_other_metadata_identical": True,
                     "tensor_descriptors_identical": True,
                     "tensor_payload_identical": True},
    }


def repair(source: Path, output: Path, receipt: Path) -> dict:
    partial = output.with_name(output.name + ".partial")
    for path in (output, receipt, partial):
        require(not path.exists(), f"Refusing to replace existing file: {path}")
    require(output.parent.is_dir() and receipt.parent.is_dir(), "Destination directories must already exist")
    before = validate_source(source)
    entries = dict(before.entries)
    entries.update(REPAIR_BYTES)
    prefix = b"GGUF" + struct.pack("<IQQ", before.version, before.tensor_count, len(entries))
    prefix += b"".join(entries.values()) + before.descriptors
    prefix += b"\0" * (-len(prefix) % before.alignment)
    with partial.open("xb") as destination, source.open("rb") as original:
        destination.write(prefix)
        original.seek(before.data_offset)
        while chunk := original.read(READ_SIZE):
            destination.write(chunk)
        destination.flush()
        os.fsync(destination.fileno())
    report = verify_files(source, partial)
    # The destination must remain absent. On Windows rename refuses replacement.
    # Hard-link publication is exclusive: it publishes the verified bytes without
    # replacing another file. Failure leaves .partial for inspection.
    os.link(partial, output)
    partial.unlink()
    report["output"]["path"] = str(output)
    with receipt.open("x", encoding="utf-8", newline="\n") as stream:
        json.dump(report, stream, indent=2, ensure_ascii=True)
        stream.write("\n")
    return report


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--receipt", type=Path)
    parser.add_argument("--verify-only", action="store_true")
    args = parser.parse_args()
    source, output = args.source.resolve(strict=True), args.output.resolve()
    receipt = (args.receipt or output.with_name(output.name + ".metadata-repair.json")).resolve()
    require(os.path.normcase(str(source)) != os.path.normcase(str(output)), "Source and output must differ")
    require(os.path.normcase(str(receipt)) not in {os.path.normcase(str(source)), os.path.normcase(str(output))},
            "Receipt path must differ from both model paths")
    report = verify_files(source, output) if args.verify_only else repair(source, output, receipt)
    print(json.dumps({"verified": True, "output": report["output"],
                      "tensor_payload_sha256": report["source_tensor_payload_sha256"],
                      "receipt": None if args.verify_only else str(receipt)}, indent=2))


if __name__ == "__main__":
    main()
