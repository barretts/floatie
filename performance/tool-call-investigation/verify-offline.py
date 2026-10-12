"""Verify actual server serializers against controlled native fixtures, not benchmark grading."""
import json
import pathlib

root=pathlib.Path(__file__).resolve().parent
path=sorted(root.glob('parser-candidate-*.json'))[-1]
data=json.loads(path.read_text(encoding='utf-8'))
checks=[]
def check(name, condition):
    checks.append({'name':name,'passed':bool(condition)})
    if not condition: raise AssertionError(name)
def functions(message):
    return [c['function'] for c in message.get('tool_calls',[])]
expected={'single':1,'multiple':2,'repeated':3,'markup-value':1,'truncated':1,'native-end':1,'98-native-fixture':98}
for case in data['checks']:
    name=case['case']
    check(name+' parsed count',len(case['full'].get('tool_calls',[]))==expected[name])
    check(name+' has no parser exception','exception' not in case)
    for split in case['splits']:
        calls={}
        headers={}
        reasons=[]
        native=''
        for frame in split['events']:
            if '__verbose' in frame: native += frame['__verbose'].get('content','')
            for choice in frame.get('choices',[]):
                if choice.get('finish_reason'): reasons.append(choice['finish_reason'])
                for fragment in choice.get('delta',{}).get('tool_calls',[]):
                    index=fragment['index']
                    call=calls.setdefault(index,{'id':None,'function':{'name':'','arguments':''}})
                    if fragment.get('id'):
                        check(f'{name}/{split["size"]}/{index} stable ID',call['id'] in (None,fragment['id']))
                        call['id']=fragment['id']
                        headers[index]=headers.get(index,0)+1
                    function=fragment.get('function',{})
                    if function.get('name'):
                        check(f'{name}/{split["size"]}/{index} stable name',call['function']['name'] in ('',function['name']))
                        call['function']['name']=function['name']
                    call['function']['arguments']+=function.get('arguments','')
        label=f'{name}/{split["size"]}'
        check(label+' contiguous indices',list(calls)==list(range(expected[name])))
        check(label+' unique call IDs',len({c['id'] for c in calls.values()})==expected[name] and all(c['id'] for c in calls.values()))
        check(label+' exactly one header per call',all(headers[i]==1 for i in calls))
        check(label+' stream equals full parse',[c['function'] for c in calls.values()]==functions(case['full']))
        check(label+' fragment assembly equals final parse',functions(split['final'])==functions(case['full']))
        check(label+' raw diagnostics equal native input',native==case['raw'])
        check(label+' default streaming has no diagnostics',all('__verbose' not in e for e in split['normal_events']))
        ordinary=[e['choices'][0]['delta'] for e in split['normal_events'] if e.get('choices') and e['choices'][0].get('delta')]
        diagnostic=[e['choices'][0]['delta'] for e in split['events'] if e.get('choices') and not e['choices'][0].get('finish_reason') and e['choices'][0].get('delta')]
        check(label+' opt-in diagnostics preserve normal deltas',ordinary==diagnostic)
        check(label+' finish reason',reasons==(['length'] if name=='truncated' else ['tool_calls']))
        if name=='truncated':
            invalid=False
            try: json.loads(calls[0]['function']['arguments'])
            except json.JSONDecodeError: invalid=True
            check(label+' truncated arguments remain visibly invalid',invalid)
        else:
            check(label+' all complete arguments parse',all(isinstance(json.loads(c['function']['arguments']),dict) for c in calls.values()))
for name,value in data['grammar_checks'].items():
    check('grammar '+name,value==(name!='call-after-native-end'))
for name,value in data['serial_grammar_checks'].items():
    check('serial grammar '+name,value==(name!='multiple'))
check('thinking grammar permits native termination',data['thinking_grammar_native_end'])
prompt=data['tool_result_continuation_prompt']
check('tool result replay uses native tool response','<tool_response>Fixture file contents.</tool_response>' in prompt)
check('developer reminder replay maps to system','<system>Static string tables use Record.</system>' in prompt)
check('continuation begins next assistant thinking',prompt.endswith('<assistant><think>'))
out={'input':str(path),'count':len(checks),'passed':sum(c['passed'] for c in checks),'checks':checks,'scope':'Controlled native fixtures and real parser/serializer code; no live generation or client cancellation.'}
(root/'offline-verification.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
print(f'{out["passed"]}/{out["count"]} offline checks passed; '+str(root/'offline-verification.json'))
