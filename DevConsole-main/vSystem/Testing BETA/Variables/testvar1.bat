@echo off
setlocal enabledelayedexpansion
set "keep_chars=10"
set /p "name=Enter name (only the first %keep_chars% characters will be kept): "
set "name=!name:~0,%keep_chars%!"
echo You entered %name%