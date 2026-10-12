# Laguna / OMP tool-call investigation — October 11, 2026

**Later update:** the one-call policy below was subsequently removed at the owner's request. The [rewrite-loop follow-up](OMP-LOOP-FOLLOWUP.md) records the named-argument ordering repair and restored parallel default. This report retains the earlier investigation and its results.

## Result and limits

The installed server is rebuilt, restarted, and serving at `http://127.0.0.1:1235/v1`, alias `laguna-s-2.1-iq3-s`. The retained serving profile generates **one tool call per response by default**. An explicit standard request flag `parallel_tool_calls: true` still permits legitimate batches. This limits generation through the tool grammar; it does not delete decoded calls.

The historical 98-call response is consistent with model-generated repetition in an unrestricted parallel batch. **Its raw native output and original SSE were not logged, so the exact historical 98-to-98 correspondence cannot be directly proved.** The archived parsed call payload remains identical to the current transcript. Newly captured reproductions show native repetition with matching API call counts, and the installed OMP adapter reconstructs those counts faithfully.

There is a concrete server grammar defect: a complete tagged tool batch could not terminate using text-spelled `</assistant>`, despite an existing server stop rule for it. A dedicated end token worked. This defect is fixed, but fixing that alternate termination path alone did not stop the parallel stress reproduction. The single-call serving policy is the retained mitigation for the runaway batch.

## Evidence and cause classification

1. **Model output / native syntax.** A bounded stress request that deliberately banned the dedicated EOS/EOT IDs 2 and 24 produced five native calls in both modes, repeated reads, an incomplete last call, and `length` at 256 output tokens. API parsing returned five calls in each mode. This is an explicitly perturbed reproduction of a termination failure, not a claim that the historical request banned those tokens. Markup probes also showed the model rewriting argument strings; those generated values were preserved exactly by the server.
2. **Template, schema and turn termination.** The embedded Laguna v8 template was extracted from the pinned GGUF header, without loading tensors. It renders the supplied schemas and uses `<tool_call>`, `<arg_key>`, `<arg_value>`, and `</assistant>`. Developer reminders map to additional system messages; tool results replay as `<tool_response>`. Controlled grammar checks confirmed that text-spelled native termination was rejected after a complete batch. The patch permits the exact existing turn marker after a complete tagged batch and rejects another call after that marker.
3. **Server parsing / streaming.** The parser and real serializers preserved one, multiple, repeated, markup-containing, and incomplete native calls at 1-, 2-, 7-byte and whole-input splits. A controlled 98-call native fixture produced 98 calls, not additional calls. Real SSE had stable indices/IDs and correct JSON-fragment assembly. `length` remained `length` even when earlier calls were complete. Literal `<tool_call>` occurrences inside argument data are not additional semantic calls; tag occurrence counts alone must not be used as a grader.
4. **OMP compatibility.** Installed `@oh-my-pi/pi-ai` 18.9.2 reconstructed real two-call and truncated five-call SSE correctly with 7-byte transport splits. An explicitly synthetic API fixture reconstructed the historical 98 call IDs/arguments with exactly one malformed final call. OMP mapped `tool_calls` to `toolUse` and `length` to `length`. Its 98 synthetic `executed:false` results were the expected refusal to execute a batch that exhausted its allowance. OMP omits `parallel_tool_calls`; the old server default therefore allowed an unrestricted parallel batch. No OMP files were edited.

**Verified mechanism:** when generation does not select an available end token, the old parallel grammar permits continuing calls until the output allowance is exhausted. **Historical-cause hypothesis:** the 98-call incident followed that model-side repetition path. A raw capture showing few native calls but many server/client calls would refute that hypothesis; no such multiplication was observed in this investigation.

## Retained changes

Paths below are relative to the full checkout at `C:\code\poolside-strata\publish\floatie` and installed source at `E:\poolside\engine`:

| Path | Change |
|---|---|
| `common/chat-auto-parser.h` | Pass the analyzer's known stop markers to tagged-tool grammar construction. |
| `common/chat-auto-parser-generator.cpp` | Permit the exact native turn marker after a complete tagged batch, including the single-call grammar. |
| `tools/server/server-common.cpp` | Derive grammar cardinality from the configured/per-request template kwargs; the standard top-level `parallel_tool_calls` flag takes precedence. Previously that template default was ignored. |
| `tools/server/server-task.cpp` | Opt-in `verbose:true` SSE includes the native fragment/token IDs before chat parsing, including fragments that yield no normal delta. Ordinary streaming is unchanged. |
| `launch.ps1` | Configure `--chat-template-kwargs '{"parallel_tool_calls":false}'` and print the default clearly at startup. |

The installed launcher, root workspace launcher and packaged launcher match. Both batch profiles inherit the policy from the launcher; their contents did not need alteration. Context 131,072, DFlash maximum 4, target/draft Q8 KV, cache 3,072 MiB, batching, temperature 1.0, top-k 20, top-p 0.95, min-p 0 and thinking budget 2,048 are unchanged. No output allowance was raised. The original OMP 8,192-token limit is client-supplied; diagnostic requests used smaller limits.

No arbitrary markup cleanup, post-generation call deletion, model substitution, weight modification, GPU reset, desktop-app termination or benchmark grader was introduced. The policy bounds call count for requests that inherit the single-call default. Explicit parallel requests intentionally retain batch generation. It does not guarantee correct argument values, prevent every loop inside an argument/thinking block, or prevent repeated calls across separate agent turns.

If client-side control is preferred, the exact equivalent OMP model setting is:

```yaml
compat:
  # retain the existing compatibility fields
  extraBody:
    parallel_tool_calls: false
```

The current server default already handles OMP's omitted flag; that client edit is not required and was not made.

## Attempts and verification

| Check / attempt | Observed result |
|---|---|
| Original installed build, single call | One valid call in streaming and non-streaming; native output available in the non-streaming debug response. |
| Instrumentation only, coding-rule reminder | One native / one parsed call in each mode. The minimal unperturbed prompt did not reproduce 98 calls. |
| Instrumentation only, legitimate batch | Two native / two parsed calls in each mode. |
| Dedicated end IDs banned, parallel enabled, 256-token cap | Five native / five parsed calls in each mode; last call incomplete; finish `length`. |
| Native text-termination patch alone, same parallel stress | Four native / four parsed calls in each mode; still `length`. The termination patch alone is not presented as a runaway cure. |
| Saved pre-failure history, reduced schemas/isolated paths, 1,024-token cap | Non-streaming exhausted the smaller allowance on thinking; streaming emitted two valid calls. Hidden original system prompt was available only as a digest. This was not an exact replay of the historical request. |
| Final default, flag omitted | One complete call in each mode, finish `tool_calls`. |
| Final default, dedicated end IDs banned | One complete call in each mode; native text stop `</assistant>` recognized; finish `tool_calls`. |
| Explicit `parallel_tool_calls:true` | Two complete calls in each mode. |
| Explicit `parallel_tool_calls:false` | One complete call in each mode. |
| Tool-result continuation | Final answer with zero new calls, finish `stop`, in both modes. |
| Pending second read | After the first tool result, the next response reads `other.ts` once, in both modes. |
| OMP-style omitted flags and production thinking | Reminder response emits one complete call in both modes. |
| Eight-token truncation on final build | `length` in both modes; incomplete argument JSON remains visibly incomplete. OMP must not execute it. |
| Markup data | Model sometimes rewrites the requested literal. Decoded argument values exactly match the generated native values; the server does not strip or repair the markup. |
| HTTP cancellation | Canceled an active request; slot released. Verified on the earlier fixed build and final policy build. |
| Post-cancellation recovery | One valid call in both modes, with no speculative/KV-position error. |

Records contain **42 completed chat-response captures (21 streaming/non-streaming pairs), plus two canceled-request captures**. Their messages, tool schemas and parameters match within each pair except streaming/usage options. Sampled native outputs sometimes differ at a fixed seed; identical-native-input parser checks isolate transport from generation differences. The running OMP executable also reported `omp/18.9.2`, matching the installed adapter used for replay.

- [Offline verification](tool-call-investigation/offline-verification.json): **751/751 assertions**, covering the real parser/serializer and grammar with controlled native fixtures.
- [Live verification](tool-call-investigation/live-verification.json): **2,940/2,940 assertions** over recorded HTTP evidence, including IDs, arguments, finish reasons and cancellation.
- [Installed OMP adapter replay](tool-call-investigation/omp-replay-results.json): **3/3 scenarios**; the 98-call scenario is explicitly synthetic, not recovered historical raw output.
- [Original transcript summary](tool-call-investigation/transcript-summary.json) and [archived parsed failure](tool-call-investigation/failure-parsed.json).
- Raw `.sse`, `.native.txt`, `.response.json`, `.request.json`, template snapshots and generated token captures are in `tool-call-investigation/`. `verbose:true` is opt-in; the normal client receives ordinary OpenAI-compatible deltas.

The first markup assertion incorrectly required the model to reproduce the requested literal. The corrected transport assertion compares decoded arguments with generated native values; the model rewriting remains documented. A whole-transcript hash assertion also failed because OMP had continued before the owner stopped it. The transcript grew and its thinking text changed; the 98-call payload remained identical. Investigation commands only read it and did not restore or rewrite it.

## Deployment, preservation and current state

Deployment receipts record source/binary hashes, exact stopped PIDs, build output, startup arguments and rollback paths:

- [Instrumentation deployment](tool-call-investigation/deploy-instrument-20261011-182057.json), exit 0.
- [Native termination deployment](tool-call-investigation/deploy-fix-20261011-182819.json), exit 0.
- [First policy build](tool-call-investigation/deploy-policy-20261011-184329.json), exit 2: a capability entry is already `bool`, so `.get<bool>()` did not compile. Corrected without changing the intended policy.
- [Final policy deployment](tool-call-investigation/deploy-policy-20261011-184452.json), exit 0.

The complete original executable/library set was backed up before replacement at `E:\poolside\backups\before-tool-call-instrument-20261011-182057`. The stable pre-policy source/launcher/binary set is at `E:\poolside\backups\before-tool-call-policy-20261011-184329`. Additional intermediate snapshots are recorded in their receipts.

All generated calls were captured only; none were executed against the benchmark. All investigation writes were confined to the workspace and `E:\poolside`. The benchmark workspace and original transcript were not edited by investigation commands. OMP's own transcript changes occurred before the first server deployment.

**The final build is already running; no further server restart is required to apply this change.** The existing batch file starts the same policy on later launches. The original 98-call raw output remains unavailable, and the benchmark task itself was not resumed or graded. This verification establishes the bounded serving behavior and checked protocol cases, not universal model quality or the paused performance targets.
