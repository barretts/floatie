[CmdletBinding()]
param(
    [ValidateRange(512,8192)][int]$CacheMiB = 3072,
    [ValidateRange(1,64)][int]$MoeThreads = 16,
    [ValidateRange(1,15)][int]$DraftMax = 4,
    [ValidateRange(1,65535)][int]$Port = 1235
)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
$binary = Join-Path $PSScriptRoot 'build\bin\llama-server.exe'
if (-not (Test-Path -LiteralPath $binary)) { throw 'Build the server first with .\build.ps1.' }
$manifest = Get-Content -LiteralPath (Join-Path $PSScriptRoot 'model-artifacts.json') -Raw | ConvertFrom-Json
$paths = @{}
foreach ($artifact in $manifest.artifacts) {
    $file = Join-Path $PSScriptRoot ('models\' + $artifact.file)
    $receipt = $file + '.receipt.json'
    if (-not (Test-Path -LiteralPath $file) -or -not (Test-Path -LiteralPath $receipt)) {
        throw ('Prepare the pinned model files first: python .\download-models.py. Missing: ' + $artifact.file)
    }
    $record = Get-Content -LiteralPath $receipt -Raw | ConvertFrom-Json
    if ((Get-Item -LiteralPath $file).Length -ne [long]$artifact.bytes -or $record.verified_sha256 -ne $artifact.sha256 -or $record.artifact.revision -ne $artifact.revision) {
        throw ('Model preparation receipt does not match the pinned artifact: ' + $artifact.file)
    }
    $paths[$artifact.id] = $file
}
$smi = (Get-Command nvidia-smi.exe -ErrorAction Stop).Source
$gpuLine = & $smi --id=0 --query-gpu=memory.free,name --format=csv,noheader,nounits
if ($LASTEXITCODE -ne 0) { throw 'Unable to inspect GPU memory with nvidia-smi.' }
$freeMiB = 0
if (-not [int]::TryParse(($gpuLine -split ',')[0].Trim(), [ref]$freeMiB)) { throw 'Unable to read free GPU memory.' }
$requiredMiB = 11264 + $CacheMiB
if ($freeMiB -lt $requiredMiB) {
    throw "Only $freeMiB MiB of GPU memory is free; this profile needs at least $requiredMiB MiB. Close your running Qwen Strata or other GPU model manually, then run this script again. No existing process was stopped."
}
$osInfo = Get-CimInstance Win32_OperatingSystem
$freeRamGiB = [double]$osInfo.FreePhysicalMemory / 1024 / 1024
if ($freeRamGiB -lt 64) {
    throw ('Only {0:N1} GiB of physical RAM is free; prepare at least 64 GiB for Laguna. Close the running Qwen Strata model and other large applications manually, then retry.' -f $freeRamGiB)
}
$portUsers = @(Get-NetTCPConnection -State Listen -LocalPort $Port -ErrorAction SilentlyContinue)
if ($portUsers.Count -gt 0) { throw "Port $Port is already in use. Close that server or choose -Port <number>." }
$logDirectory = Join-Path $PSScriptRoot 'logs'
$cudaCache = Join-Path $PSScriptRoot 'cache\cuda'
New-Item -ItemType Directory -Path $logDirectory,$cudaCache -Force | Out-Null
$env:CUDA_VISIBLE_DEVICES = '0'
$env:CUDA_CACHE_PATH = $cudaCache
$env:LLAMA_MOE_HYBRID = '1'
$env:GGML_CUDA_MOE_CACHE_MB = [string]$CacheMiB
$env:GGML_CUDA_MOE_THREADS = [string]$MoeThreads
$env:GGML_CUDA_MOE_LAYERS = '47'
$env:PATH = (Split-Path -Parent $binary) + ';' + $env:PATH
$logFile = Join-Path $logDirectory ('laguna-' + (Get-Date -Format 'yyyyMMdd-HHmmss') + '.log')
$serverArguments = @(
    '--model', $paths.target,
    '--alias', 'laguna-s-2.1-iq3-s',
    '--ctx-size', '131072', '--parallel', '1',
    '--gpu-layers', 'all', '--flash-attn', 'on',
    '--cache-type-k', 'q8_0', '--cache-type-v', 'q8_0',
    '--override-tensor', '^blk\.[0-9]+\.ffn_(gate|up|down)_exps\.weight$=CUDA_MOE_HOST',
    '--batch-size', '512', '--ubatch-size', '512',
    '--threads', [string]$MoeThreads, '--threads-batch', [string]$MoeThreads,
    '--spec-type', 'draft-dflash', '--spec-draft-model', $paths.draft,
    '--spec-draft-ngl', 'all', '--spec-draft-n-max', [string]$DraftMax,
    '--spec-draft-type-k', 'q8_0', '--spec-draft-type-v', 'q8_0',
    '--fit', 'off', '--no-mmap', '--no-warmup', '--no-context-shift',
    '--cache-ram', '0', '--host', '127.0.0.1', '--port', [string]$Port,
    '--no-ui', '--metrics', '--jinja',
    '--temp', '1.0', '--top-k', '20', '--top-p', '1.0', '--min-p', '0.0',
    '--log-file', $logFile, '--log-timestamps'
)
Write-Host "Starting Laguna at http://127.0.0.1:$Port/v1 with 131072 context and $CacheMiB MiB expert cache."
Write-Host "This is the first inference run attempt. Log: $logFile"
Push-Location $PSScriptRoot
try {
    & $binary @serverArguments
    if ($LASTEXITCODE -ne 0) { throw "Laguna server exited with code $LASTEXITCODE. Read $logFile." }
} finally {
    Pop-Location
}