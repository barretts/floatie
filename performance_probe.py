import argparse
import hashlib
import json
from pathlib import Path
import re
import time
import urllib.request

parser = argparse.ArgumentParser(description="Repeat a saved Laguna checkpoint workload and retain timing receipts.")
parser.add_argument("--label", required=True)
parser.add_argument("--url", default="http://127.0.0.1:1235")
parser.add_argument("--prepare-only", action="store_true")
parser.add_argument("--reuse-cache", action="store_true")
parser.add_argument("--prompt-tokens", type=int, default=130278)
args = parser.parse_args()
root = Path(__file__).resolve().parent / "performance"
root.mkdir(exist_ok=True)
opener = urllib.request.build_opener(urllib.request.ProxyHandler({}))
deadline = time.monotonic() + 180
while True:
    try:
        with opener.open(args.url + "/health", timeout=2) as health:
            if json.load(health).get("status") == "ok":
                break
    except (OSError, urllib.error.HTTPError):
        pass
    if time.monotonic() >= deadline:
        raise TimeoutError("Server did not become ready within 180 seconds")
    time.sleep(1)


def post(endpoint, payload):
    request = urllib.request.Request(args.url + endpoint, data=json.dumps(payload).encode(),
                                     headers={"Content-Type": "application/json"})
    with opener.open(request, timeout=1800) as response:
        return json.load(response)


def tokenize(text, add_special=False):
    return post("/tokenize", {"content": text, "add_special": add_special})["tokens"]


request_path = root / ("checkpoint-request.json" if args.prompt_tokens == 130278
                       else f"checkpoint-request-{args.prompt_tokens}.json")
if not request_path.exists():
    # Token-level assembly makes the saved workload exactly repeatable.
    marker = "LAGUNA_CHECKPOINT_CONTENT_PLACEHOLDER"
    template = post("/apply-template", {"chat_template_kwargs": {"enable_thinking": False}, "messages": [
        {"role": "system", "content": "Read the entire document carefully and answer the final question accurately."},
        {"role": "user", "content": marker}
    ]})["prompt"]
    before, after = template.split(marker)
    intro = tokenize(before + "Document begins. The BEGINNING checkpoint code is COBALT-17.\n", add_special=True)
    middle = tokenize("\nThe MIDDLE checkpoint code is MAPLE-42.\n")
    ending = tokenize("\nThe END checkpoint code is VIOLET-89.\n"
                      "Document ends. List the three checkpoint codes in beginning, middle, end order. "
                      "Then explain briefly which location each came from.\n" + after)
    filler = tokenize("".join(
        f"Record {i:06d}: station {i % 97:02d} measured temperature {15 + i % 19} degrees, "
        f"pressure {990 + i % 37} units, and flow {10 + i % 83}. "
        "This routine observation contains no checkpoint code.\n" for i in range(5000)))
    total = args.prompt_tokens
    left = total // 2 - len(intro)
    right = total - len(intro) - left - len(middle) - len(ending)
    assert len(filler) >= max(left, right)
    tokens = intro + filler[:left] + middle + filler[-right:] + ending
    assert len(tokens) == total
    request = {"prompt": tokens, "n_predict": 80, "temperature": 0.0,
               "seed": 42, "top_k": 20, "top_p": 1.0, "min_p": 0.0,
               "cache_prompt": False, "return_tokens": True, "stream": False}
    request_path.write_text(json.dumps(request), encoding="utf-8")
    decoded = post("/detokenize", {"tokens": tokens})["content"]
    (root / f"checkpoint-prompt-{total}.txt").write_text(decoded, encoding="utf-8")

request = json.loads(request_path.read_text(encoding="utf-8"))
request["cache_prompt"] = args.reuse_cache
digest = hashlib.sha256(request_path.read_bytes()).hexdigest()
print(json.dumps({"label": args.label, "prompt_tokens": len(request["prompt"]),
                  "request_sha256": digest, "cache_prompt": args.reuse_cache}), flush=True)
if args.prepare_only:
    raise SystemExit(0)
started = time.perf_counter()
try:
    response = post("/completion", request)
except Exception as exc:
    receipt = {"label": args.label, "wall_seconds": time.perf_counter() - started,
               "request_sha256": digest, "cache_prompt": args.reuse_cache,
               "error": str(exc)}
    (root / (args.label + ".json")).write_text(json.dumps(receipt, indent=2), encoding="utf-8")
    raise
receipt = {"label": args.label, "wall_seconds": time.perf_counter() - started,
           "request_sha256": digest, "cache_prompt": args.reuse_cache,
           "response": response}
codes = re.findall(r"\b(?:COBALT-17|MAPLE-42|VIOLET-89)\b", response.get("content", ""))
receipt["first_three_checkpoint_codes"] = codes[:3]
receipt["checkpoint_order_correct"] = codes[:3] == ["COBALT-17", "MAPLE-42", "VIOLET-89"]
(root / (args.label + ".json")).write_text(json.dumps(receipt, indent=2), encoding="utf-8")
print(json.dumps({k: v for k, v in response.items() if k in
                  ["content", "timings", "tokens_evaluated", "tokens_cached", "truncated", "stop_type"]},
                 indent=2), flush=True)
print(json.dumps({"checkpoint_order_correct": receipt["checkpoint_order_correct"]}), flush=True)
