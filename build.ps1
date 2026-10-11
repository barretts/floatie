#requires -Version 7.0
[CmdletBinding()]
param(
    [int]$Jobs = 8,
    [string]$CudaRoot = 'C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.6',
    [string]$BuildDirectory = '',
    [switch]$ConfigureOnly
)
$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest
if (-not $BuildDirectory) { $BuildDirectory = Join-Path $PSScriptRoot 'build' }
if ($Jobs -lt 1) { throw 'Jobs must be positive.' }
$sourceDirectory = $PSScriptRoot
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
if (-not (Test-Path -LiteralPath $vswhere)) { throw 'Visual Studio Installer vswhere.exe was not found.' }
$vsRoot = & $vswhere -latest -products '*' -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
if ($LASTEXITCODE -ne 0 -or -not $vsRoot) { throw 'Visual Studio C++ build tools were not found.' }
$vcvars = Join-Path $vsRoot 'VC\Auxiliary\Build\vcvars64.bat'
$environmentLines = & $env:ComSpec /d /s /c "`"$vcvars`" >nul && set"
if ($LASTEXITCODE -ne 0) { throw 'Unable to initialize the MSVC build environment.' }
foreach ($line in $environmentLines) {
    $separator = $line.IndexOf('=')
    if ($separator -gt 0) {
        [Environment]::SetEnvironmentVariable($line.Substring(0, $separator), $line.Substring($separator + 1), 'Process')
    }
}
$cmake = (Get-Command cmake.exe -ErrorAction Stop).Source
$ninja = (Get-Command ninja.exe -ErrorAction Stop).Source
$cl = (Get-Command cl.exe -ErrorAction Stop).Source
$nvcc = Join-Path $CudaRoot 'bin\nvcc.exe'
if (-not (Test-Path -LiteralPath $nvcc)) { throw "CUDA compiler not found: $nvcc" }
$logDirectory = Join-Path $PSScriptRoot 'logs'
New-Item -ItemType Directory -Path $logDirectory -Force | Out-Null
$buildLog = Join-Path $logDirectory ('build-' + (Get-Date -Format 'yyyyMMdd-HHmmss') + '.log')
$nativeLog = $buildLog.Replace('.log', '.native.log')
$env:CCACHE_DIR = Join-Path $PSScriptRoot 'cache\ccache'
$buildTemp = Join-Path $PSScriptRoot 'cache\temp'
New-Item -ItemType Directory -Path $env:CCACHE_DIR,$buildTemp -Force | Out-Null
$env:TEMP = $buildTemp
$env:TMP = $buildTemp
Start-Transcript -Path $buildLog | Out-Null
try {
    $configure = @(
        '-S', $sourceDirectory, '-B', $BuildDirectory, '-G', 'Ninja',
        '-DCMAKE_BUILD_TYPE=Release', "-DCMAKE_MAKE_PROGRAM=$ninja",
        "-DCMAKE_C_COMPILER=$cl", "-DCMAKE_CXX_COMPILER=$cl",
        "-DCMAKE_CUDA_COMPILER=$nvcc", "-DCUDAToolkit_ROOT=$CudaRoot",
        '-DCMAKE_CUDA_ARCHITECTURES=89',
        '-DGGML_CUDA=ON', '-DGGML_NATIVE=ON', '-DGGML_CUDA_FA=ON',
        '-DGGML_CUDA_FA_ALL_QUANTS=OFF', '-DGGML_CUDA_NCCL=OFF',
        '-DLLAMA_BUILD_COMMON=ON', '-DLLAMA_BUILD_TOOLS=ON', '-DLLAMA_BUILD_SERVER=ON',
        '-DLLAMA_BUILD_APP=OFF', '-DLLAMA_BUILD_UI=OFF', '-DLLAMA_USE_PREBUILT_UI=OFF', '-DLLAMA_BUILD_EXAMPLES=OFF',
        '-DLLAMA_BUILD_TESTS=OFF', '-DGGML_BUILD_TESTS=OFF', '-DGGML_BUILD_EXAMPLES=OFF',
        '-DLLAMA_OPENSSL=OFF'
    )
    & $cmake @configure 2>&1 | Tee-Object -FilePath $nativeLog -Append
    if ($LASTEXITCODE -ne 0) { throw "CMake configuration failed with exit code $LASTEXITCODE" }
    if ($ConfigureOnly) { return }
    & $cmake --build $BuildDirectory --config Release --target llama-server --parallel $Jobs 2>&1 | Tee-Object -FilePath $nativeLog -Append
    if ($LASTEXITCODE -ne 0) { throw "Compilation failed with exit code $LASTEXITCODE" }
    $binaryDirectory = Join-Path $BuildDirectory 'bin'
    foreach ($name in @('cudart64_12.dll', 'cublas64_12.dll', 'cublasLt64_12.dll')) {
        $library = Join-Path $CudaRoot ('bin\' + $name)
        if (-not (Test-Path -LiteralPath $library)) { throw "Required CUDA runtime library not found: $library" }
        Copy-Item -LiteralPath $library -Destination (Join-Path $binaryDirectory $name) -Force
    }
    Write-Host "Build complete: $(Join-Path $binaryDirectory 'llama-server.exe')"
    Write-Host 'No tests or inference were run.'
} finally {
    Stop-Transcript | Out-Null
}
