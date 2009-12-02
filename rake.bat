@echo off
set OLD_PATH=%PATH%
set PATH=%PATH%;%CD%\tools\ruby\bin
tools\ruby\bin\rake %*
set PATH=%OLD_PATH%
