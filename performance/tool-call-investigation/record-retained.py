"""Update retained-source documentation and copy evidence; never runs inference."""
import datetime
import hashlib
import json
import pathlib
import shutil
import subprocess

work=pathlib.Path(r'C:\code\poolside-strata')
repo=work/'publish/floatie'
evidence=work/'performance/tool-call-investigation'
changed=['common/chat-auto-parser.h','common/chat-auto-parser-generator.cpp','tools/server/server-common.cpp','tools/server/server-task.cpp']
manifest_path=repo/'source-manifest.json'
before=evidence/'engine-source-manifest-before.json'
if not before.exists(): shutil.copyfile(manifest_path,before)
manifest=json.loads(manifest_path.read_text(encoding='utf-8-sig'))
paths=sorted(set(manifest['files'])|set(changed))
hashes={}
normalized={}
for path in paths:
    local=(repo/path).read_bytes()
    installed=(pathlib.Path(r'E:\poolside\engine')/path).read_bytes()
    if local!=installed: raise AssertionError('Installed/source bytes differ: '+path)
    hashes[path]=hashlib.sha256(local).hexdigest()
    normalized[path]=hashlib.sha256(local.replace(b'\r\n',b'\n')).hexdigest()
patch=subprocess.run(['git','diff','--binary',manifest['base_commit'],'--',*paths],cwd=repo,check=True,capture_output=True).stdout
(repo/'patches/floatie-engine.patch').write_bytes(patch)
manifest.update(captured_at=datetime.datetime.now(datetime.timezone.utc).isoformat(),changed_file_count=len(paths),files=hashes,normalized_lf_sha256=normalized,patch_sha256=hashlib.sha256(patch).hexdigest(),scope='Complete retained installed engine delta after the tool-call investigation. Raw hashes match installed Windows source bytes; normalized hashes tolerate checkout line endings. Protocol verification is documented in performance/TOOL-CALL-INVESTIGATION.md; performance work remains paused.')
manifest_path.write_text(json.dumps(manifest,indent=2)+'\n',encoding='utf-8')

ledger_path=work/'performance/attempts-ledger.json'
ledger=json.loads(ledger_path.read_text())
attempt={'id':'laguna-native-tool-turn-and-omp-cardinality','title':'Native text turn termination, raw SSE diagnostics and one-call default for OMP','status':'implemented_deployed_protocol_checks_succeeded_historical_raw_unavailable','mechanism':'Honor configured parallel_tool_calls default in grammar construction; constrain ordinary OMP responses to one call before decoding; preserve explicit parallel batches and the native text turn marker. Opt-in native SSE diagnostics expose generated fragments/IDs.','documentation_section':'subsequent_tool_protocol_repair','structured_companion':'tool-call-investigation/live-verification.json','build_exit_code':0,'prior_build_exit_code':2,'runtime_checks':'42 HTTP captures / 21 paired requests; 751 offline assertions; 2940 live evidence assertions; 3 installed OMP adapter replay scenarios. Truncation, continuation, native termination, cancellation and recovery checked. Historical 98-call raw output was not logged.','performance_goal_resumed':False,'throughput_claim':None,'control_results':{'parallel_stress_before':{'native_calls':5,'parsed_calls':5,'finish_reason':'length','max_tokens':256},'native_turn_patch_alone':{'native_calls':4,'parsed_calls':4,'finish_reason':'length'},'single_default_after':{'native_calls':1,'parsed_calls':1,'finish_reason':'tool_calls','native_stop':'</assistant>'},'explicit_parallel_after':{'native_calls':2,'parsed_calls':2,'finish_reason':'tool_calls'}},'evidence':['TOOL-CALL-INVESTIGATION.md','tool-call-investigation/offline-verification.json','tool-call-investigation/live-verification.json','tool-call-investigation/omp-replay-results.json','tool-call-investigation/deploy-policy-20261011-184452.json']}
if not any(a.get('id')==attempt['id'] for a in ledger['attempts']): ledger['attempts'].append(attempt)
ledger['structured_attempt_entry_count']=len(ledger['attempts'])
ledger['documentation_scope_note']='Original 336-file inventory was documentation-only. Later owner-authorized correctness repairs are recorded separately: Stage 4 DFlash source/build repair and Stage 5 live tool-protocol investigation. Stage 5 execution does not resume performance work or establish new throughput.'
for relative in attempt['evidence']:
    p=work/'performance'/relative
    row={'file':relative,'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
    ledger['post_inventory_artifacts']=[r for r in ledger['post_inventory_artifacts'] if r['file']!=relative]+[row]
ledger_path.write_bytes((json.dumps(ledger,indent=2)+'\n').encode('utf-8'))

allowed={'.json','.py','.ps1','.cpp','.ts','.sse','.txt','.jinja','.log','.md'}
destination=repo/'performance/tool-call-investigation'
destination.mkdir(exist_ok=True)
copied=[]
for p in evidence.iterdir():
    if p.is_file() and p.suffix in allowed:
        target=destination/p.name
        shutil.copyfile(p,target)
        if p.read_bytes()!=target.read_bytes(): raise AssertionError('Evidence copy differs: '+p.name)
        copied.append(p.name)
for name in ['TOOL-CALL-INVESTIGATION.md','attempts-ledger.json','ATTEMPTS-AND-RESULTS.md']:
    shutil.copyfile(work/'performance'/name,repo/'performance'/name)
print(f'{len(paths)} installed engine files match; complete patch/manifest updated; {len(copied)} evidence files copied; {len(ledger["attempts"])} attempt entries retained.')
