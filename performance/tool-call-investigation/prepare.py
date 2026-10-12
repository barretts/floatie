"""Read-only collection from the transcript and GGUF header; no inference."""
import collections
import hashlib
import json
import pathlib
import struct

ROOT = pathlib.Path(__file__).resolve().parent
SESSION = pathlib.Path(r'C:\Users\barrett\.omp\agent\sessions\--E--bench-laguna-01--\2026-10-11T22-38-24-884Z_01a12d1e-0674-7491-bb2b-a4753fb02867.jsonl')
data = SESSION.read_bytes()
rows = [json.loads(line) for line in data.decode('utf-8').splitlines()]
failure = next(row for row in rows if row.get('id') == 'd02d524c')
calls = [c for c in failure['message']['content'] if c['type'] == 'toolCall']
summary = {'transcript': str(SESSION), 'snapshot_sha256': hashlib.sha256(data).hexdigest(),
           'call_count': len(calls), 'names': dict(collections.Counter(c['name'] for c in calls)),
           'unique_ids': len({c['id'] for c in calls}), 'indices': [c.get('streamIndex') for c in calls],
           'metadata': {k: v for k, v in failure['message'].items() if k != 'content'},
           'raw_native_output_available': False,
           'synthetic_results': sum(row.get('message', {}).get('details', {}).get('source') == 'assistant_stop_length' for row in rows)}
(ROOT / 'transcript-summary.json').write_text(json.dumps(summary, indent=2), encoding='utf-8')
(ROOT / 'failure-parsed.json').write_text(json.dumps(failure, indent=2), encoding='utf-8')
model = pathlib.Path(r'E:\poolside\models\Laguna-S-2.1-UD-IQ3_S.gguf')
formats = {0: 'B', 1: 'b', 2: 'H', 3: 'h', 4: 'I', 5: 'i', 6: 'f', 7: '?', 10: 'Q', 11: 'q', 12: 'd'}
with model.open('rb') as f:
    def number(fmt):
        return struct.unpack('<' + fmt, f.read(struct.calcsize(fmt)))[0]
    def string():
        return f.read(number('Q')).decode('utf-8')
    def value(kind, keep):
        if kind == 8:
            size = number('Q')
            if keep:
                return f.read(size).decode('utf-8')
            f.seek(size, 1)
        elif kind == 9:
            item_kind, count = number('I'), number('Q')
            if not keep and item_kind in formats:
                f.seek(count * struct.calcsize(formats[item_kind]), 1)
            else:
                items = [value(item_kind, keep) for _ in range(count)]
                if keep:
                    return items
        elif kind in formats:
            return number(formats[kind])
        else:
            raise ValueError(kind)
    assert f.read(4) == b'GGUF'
    version, tensors, count = number('I'), number('Q'), number('Q')
    metadata = {}
    for _ in range(count):
        key, kind = string(), number('I')
        keep = key == 'tokenizer.chat_template' or (key.startswith('tokenizer.') and key.endswith('_token_id'))
        val = value(kind, keep)
        if keep:
            metadata[key] = val
(ROOT / 'laguna-active.jinja').write_text(metadata.pop('tokenizer.chat_template'), encoding='utf-8')
(ROOT / 'tokenizer-metadata.json').write_text(json.dumps(metadata, indent=2), encoding='utf-8')
print(json.dumps(summary, indent=2))
print('Tokenizer IDs:', metadata)
