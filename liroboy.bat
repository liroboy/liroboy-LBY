@echo off
REM Verifica se o Python está instalado
where python >nul 2>nul
IF ERRORLEVEL 1 (
    echo Python não está instalado. Por favor, instale o Python primeiro.
    exit /b
)

REM Instala os pacotes necessários
echo Instalando pacotes necessários...
pip install requests qrcode PyQt5 Flask numpy

REM Inicia o aplicativo LiroBoy
start "" "LiroBoy-(LBY).exe"
start "" "C:\Users\ryant\AppData\Local\Programs\Python\Python311\python.exe" "liroboy.py"
