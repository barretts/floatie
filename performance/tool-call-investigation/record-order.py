"""Retain source/evidence for the argument-order repair; never runs inference."""
import hashlib
import json
import pathlib
import runpy
import shutil

ROOT = pathlib.Path(__file__).resolve().parent
WORK = ROOT.parent.parent
REPO = WORK / 'publish/floatie'
runpy.run_path(str(ROOT / 'record-retained.py'))

manifest_path = REPO / 'source-manifest.json'
manifest = json.loads(manifest_path.read_text())
manifest['scope'] = 'Complete retained installed engine delta after native termination and named-argument ordering repairs. Raw hashes match installed Windows source bytes; normalized hashes tolerate checkout line endings. Parallel tool calls are restored by default. Original OMP task convergence remains unverified; performance work remains paused.'
manifest_path.write_text(json.dumps(manifest, indent=2) + '\n', encoding='utf-8')

ledger_path = WORK / 'performance/attempts-ledger.json'
ledger = json.loads(ledger_path.read_text())
entry = {'id': 'laguna-named-arguments-and-parallel-default',
         'title': 'Repair forced argument order; restore parallel tool calls',
         'status': 'implemented_deployed_protocol_checks_succeeded_original_loop_unverified',
         'mechanism': 'Accept permutations of mandatory/optional tagged arguments without missing or duplicate declared keys, bounded at eight properties; larger schemas retain declaration order. Remove the prior one-call launcher default.',
         'documentation_section': 'omp_rewrite_loop_followup',
         'build_exit_code': 0,
         'runtime_checks': '1031 argument-order/live evidence assertions; 751 existing parser assertions; 13 post-fix HTTP chat captures; active cancellation/recovery; installed OMP reasoning-replay capture.',
         'performance_goal_resumed': False, 'throughput_claim': None,
         'control_results': {'valid_sequences_before': '2/32', 'valid_sequences_after': '32/32',
                             'invalid_rejected_before': '4/5', 'invalid_rejected_after': '5/5',
                             'native_argument_order': ['path', 'content', 'i'],
                             'chat_argument_order_before': ['i', 'path', 'content'],
                             'chat_argument_order_after': ['path', 'content', 'i'],
                             'default_parallel_calls_after': {'nonstream': 2, 'stream': 2}},
         'limits': 'Historical native output unavailable. Reduced replay did not reproduce later cross-response loop. Owner-run fresh OMP task is being observed; no benchmark grader or investigation edits to benchmark.',
         'evidence': ['OMP-LOOP-FOLLOWUP.md', 'tool-call-investigation/order-verification.json',
                      'tool-call-investigation/offline-verification-after-order.json',
                      'tool-call-investigation/reasoning-replay-results.json',
                      'tool-call-investigation/deploy-order-20261011-210756.json']}
if not any(a.get('id') == entry['id'] for a in ledger['attempts']):
    ledger['attempts'].append(entry)
ledger['structured_attempt_entry_count'] = len(ledger['attempts'])
ledger['documentation_scope_note'] = 'Original 336-file inventory was documentation-only. Later owner-authorized correctness repairs include Stage 4 DFlash, Stage 5 native termination/diagnostics and Stage 6 named-argument ordering/restored parallel calls. Protocol execution does not resume performance work or establish new throughput.'
for relative in entry['evidence']:
    p = WORK / 'performance' / relative
    row = {'file': relative, 'bytes': p.stat().st_size, 'sha256': hashlib.sha256(p.read_bytes()).hexdigest()}
    ledger['post_inventory_artifacts'] = [r for r in ledger['post_inventory_artifacts'] if r['file'] != relative] + [row]
ledger_path.write_bytes((json.dumps(ledger, indent=2) + '\n').encode('utf-8'))
for name in ('OMP-LOOP-FOLLOWUP.md', 'attempts-ledger.json'):
    shutil.copyfile(WORK / 'performance' / name, REPO / 'performance' / name)
print(f'{len(ledger["attempts"])} attempt entries retained; named-argument follow-up copied; no commit or push.')
