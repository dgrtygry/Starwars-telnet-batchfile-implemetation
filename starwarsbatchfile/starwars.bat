@echo off
setlocal enabledelayedexpansion

set "DELAY=3"
set "FILE_PATH=%~dp0starwars.txt"

for /f "usebackq delims=" %%F in ("%FILE_PATH%") do (
    echo %%F
    timeout /t %DELAY% >nul
)

endlocal
exit /b
