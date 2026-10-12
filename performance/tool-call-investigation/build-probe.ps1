param([switch]$Candidate, [ValidateSet('parser-probe','argument-order-probe')][string]$Probe = 'parser-probe')
$ErrorActionPreference = 'Stop'
$vswhere = Join-Path ${env:ProgramFiles(x86)} 'Microsoft Visual Studio\Installer\vswhere.exe'
$vsRoot = & $vswhere -latest -products '*' -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -property installationPath
$vcvars = Join-Path $vsRoot 'VC\Auxiliary\Build\vcvars64.bat'
$environmentLines = & $env:ComSpec /d /s /c "`"$vcvars`" >nul && set"
foreach ($line in $environmentLines) {
    $separator = $line.IndexOf('=')
    if ($separator -gt 0) { [Environment]::SetEnvironmentVariable($line.Substring(0,$separator),$line.Substring($separator+1),'Process') }
}
$source = 'C:\code\poolside-strata\publish\floatie'
$installedBuild = 'E:\poolside\build'
$runStamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$label = if ($Candidate) { 'candidate' } else { 'baseline' }
$extraObjects = @()
if ($Candidate) {
    foreach ($unit in @('common/chat.cpp','common/chat-auto-parser-generator.cpp','tools/server/server-task.cpp')) {
        $unitName = [IO.Path]::GetFileName($unit)
        $object = "$PSScriptRoot\candidate-$unitName.obj"
        $compileArgs = @('/nologo','/std:c++17','/EHsc','/MD','/O2','/c',"/I$source\common", "/I$source\include", "/I$source\ggml\include", "/I$source\vendor", "/I$source\src", "/I$source\tools\server", "/I$source\tools\mtmd", "$source\$unit", "/Fo:$object")
        & cl.exe @compileArgs *> "$PSScriptRoot\compile-$unitName-$runStamp.log"
        if ($LASTEXITCODE -ne 0) { Get-Content "$PSScriptRoot\compile-$unitName-$runStamp.log"; throw "Compilation failed: $unit" }
        $extraObjects += $object
    }
}
$argsList = @('/nologo','/std:c++17','/EHsc','/MD','/O2',
    "/I$source\common", "/I$source\include", "/I$source\ggml\include", "/I$source\vendor", "/I$source\src", "/I$source\tools\server", "/I$source\tools\mtmd",
    "$PSScriptRoot\$Probe.cpp", "/Fe:$PSScriptRoot\$Probe.exe", "/Fo:$PSScriptRoot\$Probe.obj", '/link',
    "$installedBuild\common\llama-common.lib", "$installedBuild\common\llama-common-base.lib", "$installedBuild\tools\server\server-context.lib", "$installedBuild\src\llama.lib", "$installedBuild\src\CMakeFiles\llama.dir\llama-grammar.cpp.obj", "$installedBuild\src\CMakeFiles\llama.dir\llama-impl.cpp.obj",
    "$installedBuild\ggml\src\ggml.lib", "$installedBuild\ggml\src\ggml-base.lib", "$installedBuild\tools\mtmd\mtmd.lib", 'ws2_32.lib') + $extraObjects
$buildLog = "$PSScriptRoot\build-probe-$runStamp.log"
& cl.exe @argsList *> $buildLog
if ($LASTEXITCODE -ne 0) { Get-Content $buildLog; throw 'Probe build failed' }
$env:PATH = "$installedBuild\bin;" + $env:PATH
$prefix = if ($Probe -eq 'parser-probe') { 'parser' } else { 'argument-order' }
$probeProcess = Start-Process -FilePath "$PSScriptRoot\$Probe.exe" -ArgumentList @("$PSScriptRoot\laguna-active.jinja", "$PSScriptRoot\$prefix-$label-$runStamp.json") -WindowStyle Hidden -Wait -PassThru -RedirectStandardOutput "$PSScriptRoot\$prefix-$label-$runStamp.stdout.log" -RedirectStandardError "$PSScriptRoot\$prefix-$label-$runStamp.stderr.log"
Get-Content "$PSScriptRoot\$prefix-$label-$runStamp.stdout.log"
Write-Output "Complete probe records: $prefix-$label-$runStamp.*; exit=$($probeProcess.ExitCode)"
if ($probeProcess.ExitCode -ne 0) { Get-Content "$PSScriptRoot\$prefix-$label-$runStamp.stderr.log"; throw "Probe failed: $($probeProcess.ExitCode)" }
