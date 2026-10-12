param([ValidateSet('instrument','fix','policy','order')][string]$Mode)
$ErrorActionPreference = 'Stop'
$installed = 'E:\poolside'
$checkout = 'C:\code\poolside-strata\publish\floatie'
$stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$backup = Join-Path $installed "backups\before-tool-call-$Mode-$stamp"
New-Item -ItemType Directory -Path "$backup\bin","$backup\source" -Force | Out-Null
$sourceFiles = @('common\chat-auto-parser.h','common\chat-auto-parser-generator.cpp','tools\server\server-task.cpp','tools\server\server-common.cpp')
$sourceRecords = @()
foreach ($relative in $sourceFiles) {
    $original = Join-Path "$installed\engine" $relative
    $saved = Join-Path "$backup\source" ([IO.Path]::GetFileName($relative))
    Copy-Item -LiteralPath $original -Destination $saved
    $hash = (Get-FileHash -LiteralPath $original).Hash
    if ($hash -ne (Get-FileHash -LiteralPath $saved).Hash) { throw 'Source backup verification failed' }
    $sourceRecords += @{relative=$relative; original_sha256=$hash; backup=$saved}
}
$binaryRecords = @()
foreach ($file in Get-ChildItem -LiteralPath "$installed\build\bin" -File) {
    $saved = Join-Path "$backup\bin" $file.Name
    Copy-Item -LiteralPath $file.FullName -Destination $saved
    $hash = (Get-FileHash -LiteralPath $file.FullName).Hash
    if ($hash -ne (Get-FileHash -LiteralPath $saved).Hash) { throw 'Binary backup verification failed' }
    $binaryRecords += @{name=$file.Name; original_sha256=$hash; backup=$saved}
}
Copy-Item -LiteralPath "$installed\launch.ps1" -Destination "$backup\launch.ps1"
Copy-Item -LiteralPath "$installed\Start-Floatie-128k.bat" -Destination "$backup\Start-Floatie-128k.bat"
$active = @(Get-Process -Name llama-server -ErrorAction SilentlyContinue | Where-Object { $_.Path -eq "$installed\build\bin\llama-server.exe" })
foreach ($process in $active) {
    if ($process.Path -ne "$installed\build\bin\llama-server.exe") { throw 'Executable path mismatch' }
    Stop-Process -Id $process.Id -ErrorAction Stop
    $process.WaitForExit(10000) | Out-Null
}
$copyFiles = if ($Mode -eq 'instrument') { @('tools\server\server-task.cpp') } else { $sourceFiles }
foreach ($relative in $copyFiles) {
    Copy-Item -LiteralPath (Join-Path $checkout $relative) -Destination (Join-Path "$installed\engine" $relative) -Force
}
if ($Mode -in @('policy','order')) { Copy-Item -LiteralPath "$checkout\launch.ps1" -Destination "$installed\launch.ps1" -Force }
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$vsRoot = & $vswhere -latest -products '*' -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
$vcvars = Join-Path $vsRoot 'VC\Auxiliary\Build\vcvars64.bat'
$environmentLines = & $env:ComSpec /d /s /c "`"$vcvars`" >nul && set"
foreach ($line in $environmentLines) {
    $separator=$line.IndexOf('=')
    if ($separator -gt 0) { [Environment]::SetEnvironmentVariable($line.Substring(0,$separator),$line.Substring($separator+1),'Process') }
}
$log = "$PSScriptRoot\deploy-$Mode-$stamp.log"
& cmake.exe --build "$installed\build" --config Release --target llama-server --parallel 4 *> $log
$buildExit=$LASTEXITCODE
$receipt=@{mode=$Mode; timestamp=$stamp; backup=$backup; sources_before=$sourceRecords; binaries_before=$binaryRecords; stopped_pids=@($active | ForEach-Object Id); build_exit=$buildExit; build_log=$log; restart_started=$false}
if ($buildExit -eq 0) {
    $powerShell = 'C:\Program Files\PowerShell\7\pwsh.exe'
    if (-not (Test-Path -LiteralPath $powerShell)) { $powerShell = (Get-Command pwsh.exe).Source }
    $serverArgs=@('-NoLogo','-NoProfile','-ExecutionPolicy','Bypass','-File',"$installed\launch.ps1",'-ContextSize','131072','-CacheMiB','3072','-BatchSize','8192','-MoeThreads','16','-DraftMax','4','-DraftKvType','q8_0','-GpuMissesPerToken','0','-PinExperts','-AdaptiveCache','-Port','1235')
    $launcher=Start-Process -FilePath $powerShell -ArgumentList $serverArgs -WorkingDirectory $installed -WindowStyle Hidden -PassThru -RedirectStandardOutput "$PSScriptRoot\server-$Mode-$stamp.stdout.log" -RedirectStandardError "$PSScriptRoot\server-$Mode-$stamp.stderr.log"
    $receipt.restart_started=$true
    $receipt.launcher_pid=$launcher.Id
    $receipt.launch_arguments=$serverArgs
    $receipt.sources_after=@($sourceFiles | ForEach-Object { @{relative=$_; sha256=(Get-FileHash -LiteralPath (Join-Path "$installed\engine" $_)).Hash} })
    $receipt.binaries_after=@(Get-ChildItem -LiteralPath "$installed\build\bin" -File | ForEach-Object { @{name=$_.Name; sha256=(Get-FileHash -LiteralPath $_.FullName).Hash} })
}
$receipt | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath "$PSScriptRoot\deploy-$Mode-$stamp.json" -Encoding UTF8
Get-Content -LiteralPath $log
Write-Output "Deployment receipt: deploy-$Mode-$stamp.json"
if ($buildExit -ne 0) { throw "Build failed: $buildExit; backup=$backup" }
