"""Fetch pinned Laguna files with resumable HTTP ranges and SHA256 integrity checks.

This tool only downloads model bytes; it never invokes an inference runtime.
"""
from __future__ import annotations

import argparse
import concurrent.futures
import contextlib
import hashlib
import json
import math
import os
from pathlib import Path
import shutil
import threading
import time
import urllib.request

ROOT = Path(__file__).resolve().parent


def atomic_json(path: Path, data: dict) -> None:
    temporary = path.with_name(path.name + ".tmp")
    with temporary.open("w", encoding="utf-8") as out:
        json.dump(data, out, indent=2)
        out.write("\n")
        out.flush()
        os.fsync(out.fileno())
    os.replace(temporary, path)


def sha256(path: Path) -> str:
    print(f"Checking downloaded SHA256: {path.name}", flush=True)
    digest = hashlib.sha256()
    with path.open("rb") as source:
        for block in iter(lambda: source.read(16 * 1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


@contextlib.contextmanager
def exclusive_download(path: Path):
    lock = path.open("a+b")
    try:
        lock.seek(0)
        if os.name == "nt":
            import msvcrt
            if path.stat().st_size == 0:
                lock.write(b"0")
                lock.flush()
            lock.seek(0)
            msvcrt.locking(lock.fileno(), msvcrt.LK_NBLCK, 1)
        else:
            import fcntl
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    except (OSError, BlockingIOError):
        lock.close()
        raise RuntimeError(f"Another downloader already holds {path.name}") from None
    try:
        yield
    finally:
        lock.close()


def download(artifact: dict, directory: Path, workers: int, chunk_bytes: int) -> None:
    final = directory / artifact["file"]
    partial = final.with_name(final.name + ".part")
    state_path = final.with_name(final.name + ".download.json")
    receipt_path = final.with_name(final.name + ".receipt.json")
    size = artifact["bytes"]
    if final.exists():
        if final.stat().st_size != size or sha256(final) != artifact["sha256"]:
            raise RuntimeError(f"Existing artifact has unexpected bytes: {final}; preserve it and move it aside before retrying")
        identity = {key: artifact[key] for key in ("repo", "revision", "file", "bytes", "sha256")}
        atomic_json(receipt_path, {"artifact": identity, "verified_sha256": artifact["sha256"], "download_completed_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())})
        print(f"Already complete: {final}", flush=True)
        return
    identity = {key: artifact[key] for key in ("repo", "revision", "file", "bytes", "sha256")}
    if state_path.exists():
        state = json.loads(state_path.read_text(encoding="utf-8"))
        if state.get("artifact") != identity:
            raise RuntimeError(f"Resume metadata does not match pinned artifact: {state_path}")
        chunk_bytes = state["chunk_bytes"]
        if not partial.exists() or partial.stat().st_size != size:
            raise RuntimeError(f"Resume data is missing or has an unexpected size: {partial}")
    else:
        if partial.exists():
            raise RuntimeError(f"Found a partial file without resume metadata: {partial}")
        if shutil.disk_usage(directory).free < size + 1024 ** 3:
            raise RuntimeError(f"Insufficient free space to prepare {final.name}")
        state = {"artifact": identity, "chunk_bytes": chunk_bytes, "completed": []}
        with partial.open("wb") as out:
            out.truncate(size)
        atomic_json(state_path, state)
    chunk_count = math.ceil(size / chunk_bytes)
    completed = set(state["completed"])
    if any(not isinstance(i, int) or i < 0 or i >= chunk_count for i in completed):
        raise RuntimeError("Resume metadata contains an invalid chunk index")
    guard = threading.Lock()
    stop = threading.Event()
    inflight: dict[int, int] = {}
    url = f"https://huggingface.co/{artifact['repo']}/resolve/{artifact['revision']}/{artifact['file']}"

    def retrieve(index: int) -> None:
        first = index * chunk_bytes
        last = min(size, first + chunk_bytes) - 1
        expected = last - first + 1
        for attempt in range(8):
            if stop.is_set():
                return
            try:
                request = urllib.request.Request(
                    url + f"?download=true&range_start={first}&attempt={attempt}",
                    headers={"Range": f"bytes={first}-{last}", "User-Agent": "poolside-preparation/1.0"},
                )
                with guard:
                    inflight[index] = 0
                with urllib.request.urlopen(request, timeout=90) as response:
                    wanted_range = f"bytes {first}-{last}/{size}"
                    if response.status != 206 or response.headers.get("Content-Range") != wanted_range:
                        raise RuntimeError(f"Server did not honor requested chunk {index}")
                    received = 0
                    with partial.open("r+b", buffering=0) as out:
                        out.seek(first)
                        while received < expected:
                            if stop.is_set():
                                return
                            block = response.read(min(1024 * 1024, expected - received))
                            if not block:
                                raise RuntimeError(f"Short HTTP response for chunk {index}")
                            out.write(block)
                            received += len(block)
                            with guard:
                                inflight[index] = received
                        out.flush()
                        os.fsync(out.fileno())
                with guard:
                    completed.add(index)
                    inflight.pop(index, None)
                    state["completed"] = sorted(completed)
                    atomic_json(state_path, state)
                return
            except Exception as exc:
                with guard:
                    inflight.pop(index, None)
                if attempt == 7:
                    stop.set()
                    raise RuntimeError(f"Chunk {index} failed after retries ({type(exc).__name__}): {exc}") from exc
                print(f"Retrying chunk {index}, attempt {attempt + 2} ({type(exc).__name__})", flush=True)
                stop.wait(min(2 ** attempt, 30))

    pending = [index for index in range(chunk_count) if index not in completed]
    resumed_bytes = sum(min(chunk_bytes, size - index * chunk_bytes) for index in completed)
    started = time.monotonic()
    print(f"Downloading {final.name}: {size / 1024**3:.2f} GiB; resuming {len(completed)}/{chunk_count} chunks", flush=True)
    executor = concurrent.futures.ThreadPoolExecutor(max_workers=workers)
    futures = {executor.submit(retrieve, index) for index in pending}
    try:
        while futures:
            done, futures = concurrent.futures.wait(futures, timeout=20, return_when=concurrent.futures.FIRST_EXCEPTION)
            for future in done:
                future.result()
            with guard:
                total = sum(min(chunk_bytes, size - index * chunk_bytes) for index in completed) + sum(inflight.values())
                finished = len(completed)
            elapsed = max(1.0, time.monotonic() - started)
            speed = (total - resumed_bytes) / elapsed / 1024 ** 2
            print(f"  {total / size:6.1%}  {total / 1024**3:6.2f}/{size / 1024**3:.2f} GiB  {speed:5.1f} MiB/s  chunks {finished}/{chunk_count}", flush=True)
    except BaseException:
        stop.set()
        for future in futures:
            future.cancel()
        raise
    finally:
        executor.shutdown(wait=True, cancel_futures=True)
    actual_hash = sha256(partial)
    if actual_hash != artifact["sha256"]:
        raise RuntimeError(f"SHA256 mismatch for {partial.name}: {actual_hash}; preserve the file for inspection")
    os.replace(partial, final)
    atomic_json(receipt_path, {"artifact": identity, "verified_sha256": actual_hash, "download_completed_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())})
    state_path.unlink()
    print(f"Ready on disk: {final}", flush=True)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--only", choices=("target", "draft"))
    parser.add_argument("--workers", type=int, default=6)
    parser.add_argument("--chunk-mib", type=int, default=64)
    parser.add_argument("--directory", type=Path, default=ROOT / "models")
    args = parser.parse_args()
    if not 1 <= args.workers <= 16 or not 8 <= args.chunk_mib <= 1024:
        parser.error("workers must be 1..16 and chunk-mib must be 8..1024")
    args.directory.mkdir(parents=True, exist_ok=True)
    artifacts = json.loads((ROOT / "model-artifacts.json").read_text(encoding="utf-8"))["artifacts"]
    with exclusive_download(args.directory / ".download.lock"):
        for artifact in artifacts:
            if args.only is None or artifact["id"] == args.only:
                download(artifact, args.directory, args.workers, args.chunk_mib * 1024 ** 2)


if __name__ == "__main__":
    main()