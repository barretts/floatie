"""Check recorded transport evidence. Does not send requests or execute tools."""
import hashlib
import json
import pathlib
root=pathlib.Path(__file__).resolve().parent
checks=[]
matrix=[]
pairs={}
def check(name,condition):
    checks.append({'name':name,'passed':bool(condition)})
    if not condition: raise AssertionError(name)
for path in sorted(root.glob('*.summary.json')):
    summary=json.loads(path.read_text(encoding='utf-8'))
    label=summary['label']
    prefix=path.name.removesuffix('.summary.json')
    body=json.loads((root/(prefix+'.request.json')).read_text(encoding='utf-8'))
    calls=summary['calls']
    ids=[c['id'] for c in calls]
    check(label+' unique IDs',len(set(ids))==len(ids) and all(ids))
    if summary['stream']:
        frames=[json.loads(line[6:]) for line in (root/(prefix+'.sse')).read_text(encoding='utf-8').splitlines() if line.startswith('data: ') and line!='data: [DONE]']
        assembled={}
        header_counts={}
        for frame in frames:
            for choice in frame.get('choices',[]):
                check(label+' response index zero',choice['index']==0)
                for fragment in choice.get('delta',{}).get('tool_calls',[]):
                    index=fragment['index']
                    call=assembled.setdefault(index,{'id':'','type':'function','function':{'name':'','arguments':''}})
                    if fragment.get('id'):
                        check(label+f'/{index} stable ID',call['id'] in ('',fragment['id']))
                        call['id']=fragment['id']
                        header_counts[index]=header_counts.get(index,0)+1
                    function=fragment.get('function',{})
                    if function.get('name'):
                        check(label+f'/{index} stable name',call['function']['name'] in ('',function['name']))
                        call['function']['name']=function['name']
                    call['function']['arguments']+=function.get('arguments','')
        check(label+' contiguous indices',list(assembled)==list(range(len(calls))))
        check(label+' assembled fragments match capture',list(assembled.values())==calls)
        check(label+' one header per call',all(header_counts.get(i)==1 for i in assembled))
    if summary['finish_reason']=='tool_calls':
        check(label+' complete JSON arguments',not summary['invalid_arguments'])
    if 'truncated' in label:
        check(label+' truncation maps to length',summary['finish_reason']=='length')
    if label.startswith('policy-'):
        if label.startswith('policy-explicit'):
            check(label+' legitimate explicit batch retained',len(calls)==2 and summary['finish_reason']=='tool_calls')
        elif 'continuation' not in label and 'truncated' not in label:
            check(label+' default yields one complete call',len(calls)==1 and summary['finish_reason']=='tool_calls')
        if 'batch-continuation' in label:
            check(label+' second pending read continues',len(calls)==1 and 'other.ts' in json.loads(calls[0]['function']['arguments'])['path'])
        elif 'continuation' in label:
            check(label+' answer follows tool result',not calls and summary['finish_reason']=='stop')
        if 'text-ending' in label:
            check(label+' text native terminator recognized',summary['native_stop']=='</assistant>')
        if 'markup' in label:
            native=(root/(prefix+'.native.txt')).read_text(encoding='utf-8')
            native_value=native.split('<arg_key>path</arg_key><arg_value>',1)[1].split('</arg_value>',1)[0]
            decoded_value=json.loads(calls[0]['function']['arguments'])['path']
            # Model instruction-following is separate: it rewrote the requested
            # literal in these probes. Check transport against what it generated.
            check(label+' generated markup value preserved exactly',decoded_value==native_value)
    group=label.rsplit('-',1)[0]
    comparable={k:v for k,v in body.items() if k not in ('stream','stream_options')}
    if group in pairs: check(group+' same messages, schemas and parameters',pairs[group]==comparable)
    else: pairs[group]=comparable
    matrix.append({'label':label,'stream':summary['stream'],'finish_reason':summary['finish_reason'],'calls':len(calls),'native_tag_occurrences':summary['raw_tool_markers'],'invalid_arguments':len(summary['invalid_arguments']),'raw_available':summary['raw_available'],'native_stop':summary['native_stop']})
for path in sorted(root.glob('*cancel*.result.json')):
    result=json.loads(path.read_text())
    check(path.name+' canceled an active request',result['was_processing'])
    check(path.name+' server released the slot',result['released'])
session=pathlib.Path(r'C:\Users\barrett\.omp\agent\sessions\--E--bench-laguna-01--\2026-10-11T22-38-24-884Z_01a12d1e-0674-7491-bb2b-a4753fb02867.jsonl')
original=json.loads((root/'transcript-summary.json').read_text())
current=next(json.loads(line) for line in session.read_text().splitlines() if json.loads(line).get('id')=='d02d524c')
saved=json.loads((root/'failure-parsed.json').read_text())
saved_calls=[c for c in saved['message']['content'] if c['type']=='toolCall']
current_calls=[c for c in current['message']['content'] if c['type']=='toolCall']
check('historical 98-call payload remains identical',saved_calls==current_calls)
check('historical finish reason remains length',current['message']['stopReason']=='length')
transcript={'initial_snapshot_sha256':original['snapshot_sha256'],'final_sha256':hashlib.sha256(session.read_bytes()).hexdigest(),'whole_file_changed':hashlib.sha256(session.read_bytes()).hexdigest()!=original['snapshot_sha256'],'final_modified_time':session.stat().st_mtime,'call_payload_unchanged':saved_calls==current_calls,'note':'OMP was allowed to continue before the owner stopped it. Additional rows and a thinking-text change appeared before server deployment. Investigation tools only read this transcript; no restoration or rewrite was performed.'}
result={'capture_count':len(matrix),'checks':checks,'passed':sum(c['passed'] for c in checks),'count':len(checks),'matrix':matrix,'transcript':transcript,'scope':'Saved real HTTP captures; paired requests differ only by stream and usage options. Raw tag occurrences are not semantic call counts when tags occur inside argument data. Historical 98-call raw output was not logged.'}
(root/'live-verification.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(f'{result["passed"]}/{result["count"]} live evidence checks passed over {len(matrix)} HTTP captures.')
