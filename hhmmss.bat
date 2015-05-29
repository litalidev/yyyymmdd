@echo off
set tt=%time%
set hhmmss=%tt:~0,2%%tt:~3,2%%tt:~6,2%

if "%1x" == "-qx" goto end
echo %hhmmss%
:end
