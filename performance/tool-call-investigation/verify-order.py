"""Check recorded server protocol evidence; never executes tools or grades RG-01."""
import json
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parent
checks = []


def check(name, condition):
    checks.append({'name': name, 'passed': bool(condition)})
    if not condition:
        raise AssertionError(name)


def latest(pattern):
    return max(ROOT.glob(pattern), key=lambda p: p.stat().st_mtime)


baseline = json.loads(latest('argument-order-baseline-*.json').read_text())
candidate_path = latest('argument-order-candidate-*.json')
candidate = json.loads(candidate_path.read_text())
check('baseline rejects valid named-argument permutations', sum(c['expected_valid'] and c['grammar_accepts'] for c in baseline['cases']) == 2)
check('baseline permits duplicate optional key', any(c['name'] == 'duplicate-optional' and c['grammar_accepts'] for c in baseline['cases']))
for i, case in enumerate(candidate['cases']):
    label = f'argument case {i}: {case["name"]}'
    check(label + ' grammar', case['grammar_accepts'] == case['expected_valid'])
    if not case['expected_valid']:
        continue
    check(label + ' parses', 'parse_error' not in case)
    full = case['parsed']['tool_calls']
    expected_count = 2 if case['name'] == 'multiple' else 1
    check(label + ' call count', len(full) == expected_count)
    for call in full:
        args = json.loads(call['function']['arguments'])
        check(label + ' correct named values', all(args[k] == v for k, v in {'i': 'Create constant', 'path': 'scratch/status.ts', 'content': 'export const READY = true;\n'}.items()))
        if 'append' in args:
            check(label + ' boolean preserved', args['append'] is True)
    for split in case['splits']:
        assembled = {}
        for frame in split['events']:
            for choice in frame.get('choices', []):
                for fragment in choice.get('delta', {}).get('tool_calls', []):
                    index = fragment['index']
                    actual = assembled.setdefault(index, {'id': None, 'name': '', 'arguments': ''})
                    if fragment.get('id'):
                        check(label + ' stable ID', actual['id'] in (None, fragment['id']))
                        actual['id'] = fragment['id']
                    f = fragment.get('function', {})
                    if f.get('name'):
                        check(label + ' stable name', actual['name'] in ('', f['name']))
                        actual['name'] = f['name']
                    actual['arguments'] += f.get('arguments', '')
        check(label + ' contiguous stream indices', list(assembled) == list(range(expected_count)))
        check(label + ' unique stream IDs', all(a['id'] for a in assembled.values()) and len({a['id'] for a in assembled.values()}) == expected_count)
        check(label + ' exact fragment assembly', [a['arguments'] for a in assembled.values()] == [c['function']['arguments'] for c in full])
        check(label + ' stream equals final', [c['function'] for c in split['final']['tool_calls']] == [c['function'] for c in full])
for boundary in candidate['boundaries']:
    count = boundary['properties']
    check(f'{count} properties declaration order accepted', boundary['ordered'])
    check(f'{count} properties reverse-order scope', boundary['reversed'] == (count <= 8))

prefixes = {'order-fixed-chat': (1, 'tool_calls'),
            'order-fixed-default-multiple': (2, 'tool_calls'),
            'order-fixed-single': (1, 'tool_calls'),
            'order-fixed-continuation': (0, 'stop'),
            'order-fixed-serial': (1, 'tool_calls'),
            'order-fixed-truncated': (1, 'length'),
            'order-fixed-reminder-reminder': (1, 'tool_calls')}
captured = []
for prefix, (expected_count, finish) in prefixes.items():
    files = sorted(ROOT.glob(prefix + '-*.summary.json'))
    check(prefix + ' expected captures', len(files) == (1 if prefix == 'order-fixed-chat' else 2))
    for file in files:
        summary = json.loads(file.read_text())
        captured.append(file.name)
        check(file.name + ' call count', len(summary['calls']) == expected_count)
        check(file.name + ' finish', summary['finish_reason'] == finish)
        check(file.name + ' indices', summary['indices'] == list(range(expected_count)))
        check(file.name + ' unique IDs', len({c['id'] for c in summary['calls']}) == expected_count)
        check(file.name + ' truncation visible', len(summary['invalid_arguments']) == (1 if finish == 'length' else 0))
        body = json.loads(file.with_name(file.name.replace('.summary.json', '.request.json')).read_text())
        if prefix in ('order-fixed-default-multiple', 'order-fixed-single', 'order-fixed-reminder-reminder'):
            check(file.name + ' standard flag omitted', 'parallel_tool_calls' not in body)
    if len(files) == 2:
        bodies = [json.loads(f.with_name(f.name.replace('.summary.json', '.request.json')).read_text()) for f in files]
        for body in bodies:
            body.pop('stream', None)
            body.pop('stream_options', None)
        check(prefix + ' matching paired request bodies', bodies[0] == bodies[1])

order_file = latest('order-fixed-chat-*.native.txt')
order = re.findall(r'<arg_key>(.*?)</arg_key>', order_file.read_text())
check('live native argument order preserved', order == ['path', 'content', 'i'])
cancel = json.loads(latest('order-fixed-cancel-*.result.json').read_text())
check('cancellation interrupted active request', cancel['was_processing'])
check('cancellation released slot', cancel['released'])
replay = json.loads((ROOT / 'reasoning-replay-results.json').read_text())
check('installed OMP adapter preserves prior reasoning', replay['prior_reasoning_preserved'])
check('OMP low sends no effort parameter', replay['reasoning_effort'] == 'omitted')

result = {'count': len(checks), 'passed': sum(c['passed'] for c in checks), 'checks': checks,
          'argument_probe': str(candidate_path), 'post_fix_chat_captures': captured,
          'scope': 'Argument ordering, exact parser/serializer fragments, bounded expansion and recorded live protocol responses. Does not establish original benchmark convergence or code correctness.'}
(ROOT / 'order-verification.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
print(f'{result["passed"]}/{result["count"]} checks passed; {len(captured)} post-fix chat captures; original OMP task convergence remains unverified.')
