@echo off

REM Verifica se o pip está instalado
"C:\Users\ryant\AppData\Local\Programs\Python\Python311\python.exe" -m pip --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo "O pip não está instalado. Por favor, instale o pip primeiro."
    exit /b
)

REM Instala todos os pacotes necessários
"C:\Users\ryant\AppData\Local\Programs\Python\Python311\python.exe" -m pip install -r requirements.txt

REM Inicia o executável do LiroBoy
start "" "LiroBoy-(LBY).exe"

REM Inicia o script Python
start "" "C:\Users\ryant\AppData\Local\Programs\Python\Python311\python.exe" "liroboy.py"
