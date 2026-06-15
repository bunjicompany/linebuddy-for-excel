@echo off
setlocal
cd /d "%~dp0"

if exist "dist\ItsumonoKaigyoForExcel.exe" (
  "dist\ItsumonoKaigyoForExcel.exe"
  exit /b %ERRORLEVEL%
)

if exist ".venv\Scripts\pythonw.exe" (
  ".venv\Scripts\pythonw.exe" "excel_line_breaker.py"
  exit /b %ERRORLEVEL%
)

pyw "excel_line_breaker.py" 2>nul
if %ERRORLEVEL% EQU 0 exit /b 0

pythonw "excel_line_breaker.py"
