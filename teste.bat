@echo off
:: Verifica privilégios de administrador
net session >nul 2>&1

if %errorLevel% == 0 (
    echo msgbox "O script foi executado COMO ADMINISTRADOR.", 64, "Status de Execucao" > %temp%\msg.vbs
) else (
    echo msgbox "O script foi executado SEM privilegios de administrador.", 48, "Status de Execucao" > %temp%\msg.vbs
)

:: Executa a mensagem e limpa o arquivo temporario
start /wait %temp%\msg.vbs
del %temp%\msg.vbs