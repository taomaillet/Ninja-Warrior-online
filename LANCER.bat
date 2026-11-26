@echo off
cd /d "%~dp0"
where npm.cmd >nul 2>&1 || (echo Installe Node.js depuis https://nodejs.org & pause & exit /b 1)
call npm.cmd install
if errorlevel 1 (pause & exit /b 1)
start "" http://localhost:3000
call npm.cmd start
pause
