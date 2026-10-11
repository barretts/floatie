@echo off
setlocal
title Floatie - Laguna 8k
cd /d "%~dp0" || exit /b 1

pwsh.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0launch.ps1" ^
    -ContextSize 8192 -CacheMiB 6144 -BatchSize 8192 ^
    -MoeThreads 16 -DraftMax 4 -DraftKvType q8_0 -GpuMissesPerToken 0 ^
    -PinExperts -AdaptiveCache -Port 1235

set "FLOATIE_EXIT_CODE=%ERRORLEVEL%"
echo.
echo Floatie stopped. Exit code: %FLOATIE_EXIT_CODE%
pause
exit /b %FLOATIE_EXIT_CODE%
