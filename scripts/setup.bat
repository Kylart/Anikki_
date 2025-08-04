@echo off
setlocal enabledelayedexpansion

REM Usage: setup_win.bat <platform>
if "%~1"=="" (
    echo Usage: %~nx0 ^<platform^>
    exit /b 1
)

set "platform=%~1"


REM Only accept windows-x64 or windows-x86
if /i not "%platform%"=="windows-x64" if /i not "%platform%"=="windows-x86" (
  echo Only 'windows-x64' or 'windows-x86' are supported as platform.
  exit /b 2
)

set "asset_path=assets/torrest/libanitorrest-%platform%.dll"
set "pubspec_file=..\pubspec.yaml"

REM Check if asset_path is already in pubspec.yaml
findstr /C:"%asset_path%" "%pubspec_file%" >nul 2>&1
if errorlevel 1 (
    REM Find the line number of 'assets:'
    for /f "delims=: tokens=1,*" %%A in ('findstr /n "assets:" "%pubspec_file%"') do set "assets_line=%%A"
    if not defined assets_line (
        echo 'assets:' section not found in %pubspec_file%
        exit /b 3
    )

    REM Create a temp file
    set "tmpfile=%pubspec_file%.tmp"
    set "count=0"
    (for /f "usebackq delims=" %%L in ("%pubspec_file%") do (
        set /a count+=1
        echo %%L
        if !count! equ %assets_line% echo "  - %asset_path%"
    )) > "%tmpfile%"
    move /y "%tmpfile%" "%pubspec_file%" >nul
)
