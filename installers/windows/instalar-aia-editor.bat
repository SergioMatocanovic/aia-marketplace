@echo off
title AIA Editor - Instalador
color 0B
echo.
echo  ===================================
echo    Plataforma AIA - AIA Editor
echo    Instalador / Atualizador
echo  ===================================
echo.

where claude >nul 2>nul
if %errorlevel% neq 0 (
    echo  [ERRO] O Claude Code nao foi encontrado nesta maquina.
    echo.
    echo  Instale o Claude Code primeiro em:
    echo  https://claude.com/download
    echo.
    echo  Depois de instalar, execute este arquivo novamente.
    echo.
    pause
    exit /b 1
)

echo  Conectando ao catalogo da Plataforma AIA...
echo.
call claude plugin marketplace add SergioMatocanovic/aia-marketplace

echo.
echo  Instalando o AIA Editor...
echo.
call claude plugin install aia-editor@aia-marketplace

echo.
echo  Verificando se ha versao mais recente...
echo.
call claude plugin marketplace update aia-marketplace
call claude plugin update aia-editor@aia-marketplace

echo.
echo  ===================================
echo    Pronto! AIA Editor instalado.
echo  ===================================
echo.
echo  Feche o app Claude (se estiver aberto) e abra novamente
echo  para comecar a usar o AIA Editor.
echo.
pause
