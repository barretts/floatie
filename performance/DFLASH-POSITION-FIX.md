# DFlash speculative-batch position repair

Implemented and installed **2026-10-11**, by explicit owner request to fix the reported speculative-batch failure. The performance goal remains paused. No tuning, inference regression, tests or benchmark requests ran.

## Recorded failure

[Original server log](installed-evidence/logs/laguna-20261011-163236.log) first processes 5,314 target tokens and injects the final 706 into the all-SWA draft, ending at position 5,313. The next target batch contains 8,188 tokens starting at 5,314. Tail trimming skips 7,168 rows and tries to inject at **12,482** while draft memory requires **5,314**. The draft rejects that jump.

The target batch already succeeded, but the error path retained target prompt tokens and draft KV. Identical-prefix retries therefore reused target history through 13,506 while the draft remained at 5,313. The reported **13,505 versus 5,313** error is this retry aftermath. The exact original request body was not available; the saved log establishes the batch positions and failure.

## Installed repair

1. [Draft injection](../common/speculative.cpp#L1084): when the existing all-standard-SWA guard selects a trimmed suffix, remove only that draft sequence's old KV before injection. The complete retained sliding window is rebuilt at the original absolute positions with the original chunk sizes. Check sequence-removal success and return failure if it fails. Untrimmed verification batches keep their existing path.
2. [Speculative failure cleanup](../tools/server/server-context.cpp#L3647): after a false speculative-processing result, clear the active slots' target/draft sequence KV, prompt tokens, serialized prompt state, prompt checkpoints and speculative checkpoints before the existing handler reports and releases them. Idle slots remain untouched; the affected scope matches the existing abort policy.

The draft's embedding-injection graph constructs independent per-row KV. Tail rebuilding is restricted by `llama_model_n_swa_all` to models where every layer uses the same standard sliding window. The global consecutive-position validator remains intact. No model weights, selected experts or quantization changed, and DFlash remains enabled.

The suggested empty speculative-state setter was removed during review because it does not reset EAGLE3 state and DFlash has no such additional state. No unrelated speculative implementation change was retained.

## Result and verification

**Source and compilation verified:** both changed sources are synchronized; every one of the **26 overlay files** matches the installed E: source. The incremental `llama-server` build completed with **exit 0**, 16:56:53?16:57:11 local time. All **12 installed binary hashes** were recorded; seven changed on rebuilding/linking, including previously restored sources that had stale objects. UI-asset and integer-conversion warnings did not prevent the build.

Two static reviews found no material flaw in the final diff. These are source-level checks, not runtime success claims. **No inference regression, quality comparison or throughput measurement was run.** The repaired long-prefill and retry paths remain unverified by execution. General exceptions thrown inside speculative processing still use existing handling; this repair addresses its false-return path.

At **16:59:13 -05:00**, no process existed at the verified Laguna executable path. The agent did not restart the server. The existing [128k batch file](../Start-Floatie-128k.bat) uses the rebuilt installation: context **131,072**, startup expert cache **3,072 MiB**, batch/ubatch **8,192**, CPU threads **16**, DFlash maximum **4**, draft KV **Q8_0**, pinned/adaptive experts, ordinary GPU misses/token **0**, and API port **1235**.

The previous **770.83 / 15.85 tok/s** normal result predates this repair. It is not a measurement of these rebuilt binaries. The 900/30 target and current-engine near-full 128k speed remain unfinished.

## Evidence and recovery

- [Two-file patch](dflash-position-fix.patch)
- [Verified pre-change source and complete binary backup](dflash-position-fix-backup.json)
- [Source deployment](dflash-position-fix-deployment.json)
- [Build result](dflash-position-fix-build.json) and [full build log](dflash-position-fix-build.log)
- [Installed source/binary identities and limits](dflash-position-fix-result.json)

The pre-change sources and all 12 binaries remain in `E:\poolside\backups\before-dflash-position-fix-20261011-165516`. Historical measurements and original error logs were not overwritten.
