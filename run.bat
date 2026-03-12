@echo off
TITLE Sector Rotation Map Server
cd /d "%~dp0"

IF EXIST ".venv\Scripts\activate.bat" (
    echo Activating virtual environment...
    call ".venv\Scripts\activate.bat"
)

echo.
echo Starting Sector Rotation API Server...
echo The application will be available at http://127.0.0.1:8000
echo.

:: Automatically open the browser after a short delay
start "" http://127.0.0.1:8000/

python api_server.py

IF ERRORLEVEL 1 (
    echo.
    echo [ERROR] The server stopped unexpectedly.
    pause
)
