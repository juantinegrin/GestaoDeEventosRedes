@echo off
set CLASSPATH=database/mysql-connector-j-9.3.0.jar;src
javac -cp "%CLASSPATH%" src/main/Main.java src/main/MainTerminal.java src/view/*.java src/model/*.java src/dao/*.java src/util/*.java
if %ERRORLEVEL% NEQ 0 (
    echo Erro na compilação!
    pause
    exit /b %ERRORLEVEL%
)
echo Compilação bem-sucedida. Executando aplicação...
java -cp "%CLASSPATH%" main.Main
pause
