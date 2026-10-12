"""Isolated native-vs-chat captures. Never executes tools or edits benchmark data."""
import argparse
import datetime
import importlib.util
import json
import pathlib
import time
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('capture_helpers', ROOT / 'live-probe.py')
helpers = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helpers)


def request(case, thinking):
    path = (ROOT / 'scratch' / 'status-table.ts').as_posix()
    source = 'export const VALID = new Set(["ready", "done"]);\nexport function accepts(status: string): boolean { return VALID.has(status); }\n'
    tools = [helpers.tool('read', ['path']), helpers.tool('write', ['path', 'content']),
             helpers.tool('bash', ['command', 'cwd'])]
    messages = [{'role': 'system', 'content': 'You are a coding assistant. Use supplied tools. Make the smallest necessary change and continue to verification. i is a short intent label, at most 200 characters; put source code in content.'},
                {'role': 'user', 'content': f'In {path}, replace the static Set with a Record<string, true> for ready and done, and update accepts to return VALID[status] === true. The full source has already been supplied. Write the corrected file, then run the provided check command once. Do not reread or repeatedly rewrite the source.'},
                {'role': 'assistant', 'reasoning_content': 'The two membership values are static. I have already implemented the small helper; a rule reminder may require changing its representation. The next step is a minimal correction and running the check, not another design review.', 'content': '',
                 'tool_calls': [{'id': 'previous-write', 'type': 'function', 'function': {'name': 'write', 'arguments': json.dumps({'i': 'Implement membership', 'path': path, 'content': source})}}]},
                {'role': 'tool', 'tool_call_id': 'previous-write', 'content': 'Successfully wrote implementation.\n' + source},
                {'role': 'developer', 'content': '<system-reminder reason="rule_violation" rule="ts-set-map">Small, static string-keyed lookup tables: Record<K, V> / Record<K, true>. Set / Map: dynamic/non-string keys; runtime insertion/deletion. MUST comply on subsequent tool calls and responses.</system-reminder>\n<system-reminder reason="rule_violation" rule="ts-no-tiny-functions">Inline functions whose whole body is one expression or return, unless the name creates a durable contract. Exported public API functions create a durable contract.</system-reminder>'}]
    if case == 'order':
        messages = [messages[0], {'role': 'user', 'content': f'Call write exactly once with arguments in this order: path, content, i. path is {path}. content is exactly export const READY = true; followed by a newline. i is Create constant. These are three named string arguments; wait for the result.'}]
    elif case == 'history':
        # Read saved history only; substitute all workspace paths. Hidden original
        # system prompt and full tool catalog were not saved, so this is reduced.
        session = pathlib.Path(r'C:\Users\barrett\.omp\agent\sessions\--E--bench-laguna-01--\2026-10-12T01-05-55-303Z_01a12da5-1267-7692-90da-c47dfde1eef1.jsonl')
        messages = messages[:1]
        for line in session.read_text(encoding='utf-8').splitlines():
            row = json.loads(line)
            msg = row.get('message')
            if not msg:
                continue
            blocks = msg.get('content', [])
            role = msg['role']
            wire = {'role': role, 'content': '\n'.join(b.get('text', '') for b in blocks if b['type'] == 'text')}
            if role == 'assistant':
                wire['reasoning_content'] = ''.join(b.get('thinking', '') for b in blocks if b['type'] == 'thinking')
                calls = [{'id': b['id'], 'type': 'function', 'function': {'name': b['name'], 'arguments': json.dumps(b['arguments'])}} for b in blocks if b['type'] == 'toolCall']
                if calls:
                    wire['tool_calls'] = calls
            elif role == 'toolResult':
                wire['role'] = 'tool'
                wire['tool_call_id'] = msg['toolCallId']
            text = json.dumps(wire)
            for old in ('E:/bench-laguna-01', r'E:\\bench-laguna-01', r'E:\bench-laguna-01'):
                text = text.replace(json.dumps(old)[1:-1], (ROOT / 'scratch').as_posix())
            messages.append(json.loads(text))
            if role == 'developer':
                break  # First coding-rule reminder, before the repeated rewrites.
    return {'model': 'laguna-s-2.1-iq3-s', 'messages': messages, 'tools': tools,
            'parallel_tool_calls': True, 'max_tokens': 768, 'seed': 42, 'temperature': 0,
            'stream': False, 'verbose': True, 'return_tokens': True,
            'chat_template_kwargs': {'enable_thinking': thinking}, 'reasoning_budget_tokens': 256}


def native(label, body):
    helpers.idle()
    template = helpers.post('/apply-template', body)
    stamp = datetime.datetime.now().strftime('%Y%m%d-%H%M%S')
    prefix = ROOT / f'{label}-{stamp}'
    helpers.write(prefix.with_suffix('.template.json'), template)
    native_body = {'prompt': template['prompt'], 'n_predict': body['max_tokens'],
                   'seed': body['seed'], 'temperature': body['temperature'], 'stream': False,
                   'return_tokens': True, 'reasoning_budget_tokens': body['reasoning_budget_tokens'],
                   'reasoning_budget_start_tag': '<think>', 'reasoning_budget_end_tag': '</think>',
                   'generation_prompt': '<assistant><think>' if body['chat_template_kwargs']['enable_thinking'] else '<assistant></think>'}
    helpers.write(prefix.with_suffix('.request.json'), native_body)
    start = time.monotonic()
    req = urllib.request.Request(helpers.BASE + '/completion', json.dumps(native_body).encode(), {'Content-Type': 'application/json'})
    with urllib.request.urlopen(req, timeout=180) as response:
        payload = response.read()
    prefix.with_suffix('.response.json').write_bytes(payload)
    result = json.loads(payload)
    prefix.with_suffix('.native.txt').write_text(result.get('content', ''), encoding='utf-8')
    print(json.dumps({'label': label, 'elapsed_s': time.monotonic() - start, 'content': result.get('content', ''),
                      'stop_type': result.get('stop_type'), 'tokens_predicted': result.get('tokens_predicted')}, ensure_ascii=False), flush=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--case', choices=['order', 'reminder', 'history'], required=True)
    parser.add_argument('--thinking', action='store_true')
    parser.add_argument('--native', action='store_true')
    parser.add_argument('--label', required=True)
    parser.add_argument('--budget', type=int)
    parser.add_argument('--limit', type=int)
    parser.add_argument('--temperature', type=float)
    parser.add_argument('--stream', action='store_true')
    args = parser.parse_args()
    body = request(args.case, args.thinking)
    if args.budget is not None:
        body['reasoning_budget_tokens'] = args.budget
    if args.limit is not None:
        body['max_tokens'] = args.limit
    if args.temperature is not None:
        body['temperature'] = args.temperature
    if args.stream:
        body['stream'] = True
        body['stream_options'] = {'include_usage': True}
    if args.native:
        native(args.label, body)
    else:
        helpers.capture(args.label, body)
