# OMP rewrite-loop follow-up - October 11, 2026

## Result

The installed server was rebuilt and restarted with a named-argument ordering repair. **Parallel tool calls are enabled by default again.** The earlier one-call policy was a mitigation for oversized batches; it did not prevent repeated reasoning or rewrites across separate responses. Requests can still explicitly set `parallel_tool_calls: false`.

**The original OMP task's convergence is not yet established.** This repair corrects a demonstrated server defect. The available reduced history replay did not reproduce the later rewrite cycle, so it cannot establish that the whole session failure is cured. No sampling or thinking defaults were changed as a substitute for finding that cause.

## Observed session failure

Read-only evidence: `C:\Users\barrett\.omp\agent\sessions\--E--bench-laguna-01--\2026-10-12T01-05-55-303Z_01a12da5-1267-7692-90da-c47dfde1eef1.jsonl`.

Through the first interruption at 01:39:16Z, there were 15 assistant responses, 14 calls (10 read, four write), and 20,906 reported output tokens over approximately 33 minutes. Three writes succeeded. At line 45 / 01:33:47Z, both `i` and `content` held the same 9,001-character implementation. OMP correctly rejected that attempt because its intent label may contain at most 200 characters. The response used a single call; this was not downstream call multiplication.

The earlier status described the first interrupted span. After that inspection, the owner steered the session with “skip it for now, circle back.” At line 59 / 01:48:07Z, OMP did run `npm run check`. Its tool result at line 62 reported exit 2 and a TypeScript `string | undefined` / `PropertyKey` error at line 118. Thus the later session did make a verification attempt; the earlier “no check commands” finding must not be applied to the subsequent continuation.

The transcript contains direct model reconsideration of coding-rule reminders, repeated complete rewrites and actual implementation mistakes. The historical native tokens were not saved. There is no direct evidence identifying which historical argument name the unconstrained model would have chosen.

## Confirmed server defect

Laguna emits tagged **named** arguments. The old auto-parser required required arguments in schema declaration order and allowed optional arguments only afterward. OMP injects `i` as the first property. This made all other valid orders illegal and could force a different argument key during sampling.

An isolated request asked for a write in `path, content, i` order. The same template prompt through native `/completion` emitted that exact valid order (75 generated tokens). The old chat endpoint forced `i, path, content`; the repaired chat endpoint emitted `path, content, i`, preserving each value. No model-returned tools were executed.

The real parser/grammar probe accepted only **2 of 32 valid sequences** before the repair: one of six required-key permutations and one of 24 permutations including an optional Boolean. The batch and native-end examples with alternate order were also rejected. A duplicate optional argument was accepted. After the repair, **32/32 valid sequences** were accepted and **5/5 missing or duplicate cases** were rejected.

**HYPOTHESIS:** forced key selection contributed to the duplicated source in the historical `i` field. A capture of the original native generation showing deliberate source text under `i` even without that constraint would refute this attribution. The historical capture is unavailable, and the experiment establishes the constraint defect rather than that attribution.

## Other hypotheses checked

- Installed OMP 18.9.2's actual OpenAI adapter preserved prior `reasoning_content` in a controlled outgoing-request capture. Dropped thinking was not reproduced.
- Its current model compatibility config sets `supportsReasoningEffort: false`. The adapter sent no `reasoning_effort` even when the caller selected `low`; it also omitted `parallel_tool_calls`. The server therefore used its configured 2,048-token thinking budget. The UI's effort label did not set a smaller server budget.
- The small rule-reminder reproduction returned a complete call on the old server too. The reduced saved-history replay returned one complete rewrite. Both used all available saved messages but lacked the original hidden system prompt and full tool catalog. They are not exact reproductions of the original OMP cycle.
- An aborted OMP request remained active and a later slot query timed out. An authorized restart cleared it. The specific cancellation path behind that incident is unresolved; a fresh active-request cancellation check passed on the repaired server.

Poolside documents native per-request `enable_thinking` control and recommends preserved thinking for agentic coding. That supports the request/template mechanism; it does not establish a remedy for this session's convergence problem. [Laguna model card](https://huggingface.co/poolside/Laguna-S-2.1).

## Changed serving paths

- `common/chat-auto-parser-generator.cpp`: generate named-argument states that accept any order, require all mandatory keys, and prohibit duplicate declared keys for schemas with at most eight properties. Expansion is bounded to at most 256 subsets. Larger schemas retain their previous declaration-order behavior; the probe verified zero, eight and nine-property boundaries. This limit bounds grammar construction, not the number of calls.
- `launch.ps1`: remove the `parallel_tool_calls:false` default and print that parallel calls are enabled. Installed, workspace and packaged launchers match. The existing batch profiles inherit the change and did not need edits.

These are the new engine/launcher changes in this follow-up. The earlier native turn-marker repair, explicit request-flag override and opt-in raw SSE diagnostics remain. No call-count heuristic, arbitrary markup stripping, post-generation call deletion, model switch, weight change or increased output cap was added.

Context 131,072, DFlash maximum four, Q8 KV, cache 3,072 MiB, temperature 1.0, top-k 20, top-p 0.95, min-p 0 and thinking budget 2,048 remain. Performance work remains paused; there is no new throughput claim.

## Verification

### Owner-run fresh OMP session

The owner started `2026-10-12T02-22-04-197Z_01a12dea-c9a5-74a1-88c5-8c2551631300.jsonl` after deployment. Its first responses contained three and two calls respectively. At 02:40:14Z it produced one implementation write with a 39-character intent label and a 10,727-character source value; OMP reported **10,739 UTF-8 bytes written**. The same `ts-set-map` and `ts-no-tiny-functions` reminders then appeared. The model recovered from an unanchored edit error, made targeted edits, and ran `npm run check` at 02:45:51Z (reported exit 0) and `npm test` at 02:46:05Z (**one test, one pass, zero failures**, reported exit 0). This establishes concrete progress through the previously failing reminder phase. Additional focused tests, RESULT.md and full task completion were not yet established at that observation.

At 02:58:10Z, it emitted a complete regression-file write with arguments in **`content, path, i` order**, a 24-character intent label and **24,406 UTF-8 bytes** of test content. The old grammar would reject that argument order; the repaired server transported it successfully. The longer suite subsequently needed corrections and the model made targeted test edits through 03:02:57Z. This long response was a legitimate source write, not a recovered 98-call batch. Full suite success and RESULT.md remain unverified. [Read-only owner-run observations](tool-call-investigation/owner-run-order-observations.json), [installed final state](tool-call-investigation/order-final-state.json).

Two inspection mistakes were corrected promptly: the old session's 02:22:00 timestamp was a `session_exit`, not a new `continue`; and the three `node --version` attempts were not three repeated successful calls. The first failed service-parameter validation, the second launched a background service, and the third obtained the version output. Neither is evidence of downstream multiplication. The fresh run took approximately 18 minutes to its first write, so the transport repair does not establish fast agent completion or causally prove that every original reasoning cycle is eliminated.

- [Argument-order and live evidence checks](tool-call-investigation/order-verification.json): **1,031/1,031 assertions**, including exact argument fragment assembly at 1-, 2-, 7-byte and whole-input splits, stable indices/IDs and the grammar boundaries.
- Existing native parser/serializer regression: **751/751 assertions**, including single/multiple/repeated calls, markup data, truncation, exact end marker and 98-call fixture. This is protocol evidence, not model convergence evidence.
- **13 completed post-fix chat captures:** native-order write; default two-call batches in both modes; single calls, explicit serial mode, tool-result final-answer continuation, truncated output and production-thinking reminder responses in both modes.
- **One active client cancellation:** slot released. Two subsequent production-thinking reminder captures succeeded, demonstrating recovery.
- **Three pre-fix chat captures and one native capture** retained separately. The reduced history replay was bounded at 4,096 output tokens, redirected paths to the isolated capture folder and executed no returned tools.
- Native-versus-parsed comparison shows correct named values. Truncated argument JSON remains invalid and uses `length`; it is not presented as a complete executable call.

Build receipt: [deploy-order-20261011-210756.json](tool-call-investigation/deploy-order-20261011-210756.json), build exit 0. Complete runtime/source/launcher backup: `E:\poolside\backups\before-tool-call-order-20261011-210756`.

The first offline candidate emitted an empty named grammar rule and failed grammar initialization. That candidate was not deployed. Removing the empty named rule and using an optional parser for the terminal optional states corrected it; the acceptance criteria stayed unchanged. The first restart attempt used a missing fixed PowerShell path; the installed WindowsApps PowerShell path was then resolved and the unchanged baseline started. Both setup failures are retained in the records.

Investigation tools did not write to the benchmark workspace or its transcript, run the benchmark, build its grader, execute generated tools, or edit OMP's installed files/settings. No commit or push occurred. The repaired server is already running; another restart is not required. Owner-run OMP continuation is needed to establish whether the real cross-response loop remains.
