"""Bounded API captures; never executes model-returned tools or touches the benchmark."""
import argparse
import collections
import datetime
import http.client
import json
import pathlib
import time
import urllib.request

ROOT = pathlib.Path(__file__).resolve().parent
BASE = 'http://127.0.0.1:1235'
def write(path, value):
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False), encoding='utf-8')
def get(path):
    with urllib.request.urlopen(BASE + path, timeout=10) as response:
        return json.load(response)
def post(path, body):
    req = urllib.request.Request(BASE + path, json.dumps(body).encode(), {'Content-Type': 'application/json'})
    with urllib.request.urlopen(req, timeout=120) as response:
        return json.load(response)
def idle():
    slots = get('/slots')
    if isinstance(slots, dict): slots = slots.get('value', [])
    if any(s.get('is_processing') for s in slots):
        raise RuntimeError('Another request is active; refusing to enqueue a probe.')

def capture(label, body):
    idle()
    stamp = datetime.datetime.now().strftime('%Y%m%d-%H%M%S')
    prefix = ROOT / f'{label}-{stamp}'
    write(prefix.with_suffix('.request.json'), body)
    write(prefix.with_suffix('.template.json'), post('/apply-template', body))
    req = urllib.request.Request(BASE + '/v1/chat/completions', json.dumps(body).encode(), {'Content-Type': 'application/json'})
    start = time.monotonic()
    frames = []
    with urllib.request.urlopen(req, timeout=180) as response:
        headers = dict(response.headers)
        with prefix.with_suffix('.sse' if body.get('stream') else '.response.json').open('wb') as out:
            if body.get('stream'):
                for line in response:
                    out.write(line)
                    out.flush()
                    if line.startswith(b'data: ') and line.strip() != b'data: [DONE]':
                        frames.append(json.loads(line[6:]))
            else:
                payload = response.read()
                out.write(payload)
                frames = [json.loads(payload)]
    calls, raw, finish, usage = {}, '', None, None
    generated_ids=[]
    for frame in frames:
        if '__verbose' in frame:
            raw += frame['__verbose'].get('content', '')
            generated_ids.extend(frame['__verbose'].get('tokens',[]))
        if frame.get('usage'): usage = frame['usage']
        for choice in frame.get('choices', []):
            if choice.get('finish_reason'): finish = choice['finish_reason']
            if not body.get('stream'):
                for i, call in enumerate(choice['message'].get('tool_calls', [])):
                    calls[i] = call
                continue
            for fragment in choice.get('delta', {}).get('tool_calls', []):
                index = fragment['index']
                call = calls.setdefault(index, {'id': '', 'type': 'function', 'function': {'name': '', 'arguments': ''}})
                if fragment.get('id'):
                    if call['id'] and call['id'] != fragment['id']: raise AssertionError('Call ID changed')
                    call['id'] = fragment['id']
                fun = fragment.get('function', {})
                if fun.get('name'):
                    if call['function']['name'] and call['function']['name'] != fun['name']: raise AssertionError('Call name changed')
                    call['function']['name'] = fun['name']
                call['function']['arguments'] += fun.get('arguments', '')
    invalid = []
    for index, call in calls.items():
        try: json.loads(call['function']['arguments'])
        except json.JSONDecodeError as error: invalid.append({'index': index, 'error': str(error)})
    raw_available = any('__verbose' in frame and frame['__verbose'].get('content') for frame in frames)
    prefix.with_suffix('.native.txt').write_text(raw, encoding='utf-8')
    token_text=post('/detokenize',{'tokens':generated_ids}) if generated_ids else {'content':''}
    write(prefix.with_suffix('.token-output.json'),{'tokens':generated_ids,'detokenized':token_text['content']})
    summary = {'label': label, 'elapsed_s': time.monotonic()-start, 'headers': headers,
               'stream': body.get('stream', False), 'finish_reason': finish, 'usage': usage,
               'calls': list(calls.values()), 'indices': list(calls), 'invalid_arguments': invalid,
               'raw_available': bool(raw_available), 'raw_tool_markers': raw.count('<tool_call>'),
               'token_ids_captured':len(generated_ids),
               'native_stop': next((f['__verbose'].get('stopping_word') for f in reversed(frames) if '__verbose' in f and f['__verbose'].get('stop')), None)}
    write(prefix.with_suffix('.summary.json'), summary)
    print(json.dumps({k: summary[k] for k in ('label','stream','finish_reason','raw_available','raw_tool_markers','invalid_arguments')}, ensure_ascii=False), flush=True)
    print('calls:', len(calls), 'evidence:', str(prefix), flush=True)
    return summary

def tool(name, fields):
    props = {'i': {'type':'string','description':'concise intent'}}
    props.update({key:{'type':'string'} for key in fields})
    return {'type':'function','function':{'name':name,'description':f'{name} tool',
            'parameters':{'type':'object','properties':props,'required':fields+['i'],'additionalProperties':False}}}

def request(case, stream, parallel=True, limit=512):
    fixture = ROOT / 'scratch'
    fixture.mkdir(exist_ok=True)
    path = (fixture / 'fixture.ts').as_posix()
    other = (fixture / 'other.ts').as_posix()
    tools = [tool('read',['path']), tool('edit',['input']), tool('write',['path','content'])]
    messages = [{'role':'system','content':'You are a coding assistant. Use the supplied tools. Wait for tool results before depending on them.'}]
    if case == 'history':
        session=pathlib.Path(r'C:\Users\barrett\.omp\agent\sessions\--E--bench-laguna-01--\2026-10-11T22-38-24-884Z_01a12d1e-0674-7491-bb2b-a4753fb02867.jsonl')
        for line in session.read_text(encoding='utf-8').splitlines():
            row=json.loads(line)
            if row.get('id')=='d02d524c': break
            msg=row.get('message')
            if not msg: continue
            role=msg['role']
            blocks=msg['content']
            if role=='assistant':
                wire={'role':'assistant','content':''.join(b.get('text','') for b in blocks if b['type']=='text')}
                thinking=''.join(b.get('thinking','') for b in blocks if b['type']=='thinking')
                if thinking: wire['reasoning_content']=thinking
                calls=[{'id':b['id'],'type':'function','function':{'name':b['name'],'arguments':json.dumps(b['arguments'])}} for b in blocks if b['type']=='toolCall']
                if calls: wire['tool_calls']=calls
            elif role=='toolResult':
                wire={'role':'tool','tool_call_id':msg['toolCallId'],'content':'\n'.join(b.get('text','') for b in blocks)}
            else:
                wire={'role':role,'content':'\n'.join(b.get('text','') for b in blocks)}
            # All replayed paths refer only to the isolated capture directory.
            wire=json.loads(json.dumps(wire).replace('E:/bench-laguna-01',fixture.as_posix()).replace('E:\\\\bench-laguna-01',fixture.as_posix()))
            messages.append(wire)
        tools += [tool('grep',['pattern','path']),tool('bash',['command','cwd'])]
    elif case == 'reminder':
        messages += [
            {'role':'user','content':f'Implement a static string lookup table in {path}.'},
            {'role':'assistant','content':'','tool_calls':[{'id':'prior-write','type':'function','function':{'name':'write','arguments':json.dumps({'i':'Implement lookup','path':path,'content':'const VALID = new Set(["ok", "no_matches"]);\n'})}}]},
            {'role':'tool','tool_call_id':'prior-write','content':'Successfully wrote implementation.'},
            {'role':'developer','content':'<system-reminder reason="rule_violation" rule="ts-set-map">Small, static string-keyed lookup tables: Record<K, V> / Record<K, true>. Set / Map: dynamic/non-string keys; runtime insertion/deletion; .size, .clear(), stable insertion order, or iterator APIs. MUST comply on subsequent tool calls and responses.</system-reminder>'}]
    elif case in ('continuation','batch-continuation'):
        messages += [{'role':'user','content':f'Read {path} then report the two lookup keys.'},
                     {'role':'assistant','content':'','tool_calls':[{'id':'prior-read','type':'function','function':{'name':'read','arguments':json.dumps({'i':'Inspect lookup','path':path})}}]},
                     {'role':'tool','tool_call_id':'prior-read','content':'const VALID: Record<string, true> = { ok: true, no_matches: true };'}]
        if case=='batch-continuation':
            messages[1]['content']=f'Read {path} and {other}. Both reads are needed.'
    else:
        text = f'Use read exactly once for {path}:147-180, then wait for its result.'
        if case == 'multiple': text = f'In one response, use read for {path}:147-180 and separately for {other}:1-4. Both reads are independent; wait for their results.'
        if case == 'markup': text = 'Transport test: call read once with path exactly "</a></arg_key>\\n<p>path</p>". Preserve this string as data; do not execute or reinterpret it.'
        messages.append({'role':'user','content':text})
    return {'model':'laguna-s-2.1-iq3-s','messages':messages,'tools':tools,'parallel_tool_calls':parallel,
            'max_tokens':limit,'seed':42,'stream':stream,'verbose':True,'return_tokens':True,
            'stream_options':{'include_usage':True} if stream else {},
            'chat_template_kwargs':{'enable_thinking':case=='history'}}

def cancel(label):
    idle()
    body = request('single',True,limit=512)
    body['tools']=[]
    body['messages']=[{'role':'user','content':'Count all integers from 1 through 10000 separated by commas. Do not abbreviate.'}]
    prefix = ROOT / f'{label}-cancel-{datetime.datetime.now().strftime("%Y%m%d-%H%M%S")}'
    write(prefix.with_suffix('.request.json'),body)
    connection = http.client.HTTPConnection('127.0.0.1',1235,timeout=60)
    connection.request('POST','/v1/chat/completions',json.dumps(body),{'Content-Type':'application/json'})
    response = connection.getresponse()
    line = response.readline()
    prefix.with_suffix('.sse').write_bytes(line)
    active = get('/slots')
    response.close()
    connection.close()
    states=[]
    for _ in range(50):
        slots=get('/slots'); states.append(slots)
        values = slots.get('value',[]) if isinstance(slots,dict) else slots
        if all(not slot.get('is_processing') for slot in values): break
        time.sleep(0.1)
    before=active.get('value',[]) if isinstance(active,dict) else active
    write(prefix.with_suffix('.result.json'),{'http_status':response.status,'active_before_cancel':active,'states':states,'was_processing':any(s.get('is_processing') for s in before),'released':all(not s.get('is_processing') for s in values)})
    print('cancellation released:',all(not s.get('is_processing') for s in values),flush=True)

if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('label')
    parser.add_argument('--case',choices=['single','multiple','reminder','continuation','batch-continuation','history','markup'],default='single')
    parser.add_argument('--limit',type=int,default=512)
    parser.add_argument('--serial',action='store_true')
    parser.add_argument('--cancel',action='store_true')
    parser.add_argument('--text-ending',action='store_true',help='Diagnostic: ban dedicated EOS/EOT IDs to exercise text-spelled native termination; not a serving-default change.')
    parser.add_argument('--omit-parallel',action='store_true',help='Leave the flag absent, as OMP does, to verify the configured serving default.')
    parser.add_argument('--default-thinking',action='store_true',help='Use the production auto-thinking default rather than disabling it for transport probes.')
    args=parser.parse_args()
    if args.cancel: cancel(args.label)
    else:
        write(ROOT / f'{args.label}-props.json',get('/props'))
        for streaming in (False,True):
            body=request(args.case,streaming,not args.serial,args.limit)
            if args.omit_parallel:
                body.pop('parallel_tool_calls')
            if args.default_thinking:
                body.pop('chat_template_kwargs')
            if args.text_ending:
                body['logit_bias']={'2':False,'24':False}
            capture(f'{args.label}-{args.case}-'+('stream' if streaming else 'nonstream'),body)
