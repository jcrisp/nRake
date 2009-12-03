@echo off
setlocal enableextensions
set PATH=%PATH%;%CD%\tools\ruby\bin
tools\ruby\bin\rake %*
endlocal
