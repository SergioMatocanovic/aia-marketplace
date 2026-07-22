#!/bin/bash
clear
echo ""
echo "==================================="
echo "  Plataforma AIA - AIA Editor"
echo "  Instalador / Atualizador"
echo "==================================="
echo ""

if ! command -v claude &> /dev/null; then
    echo "[ERRO] O Claude Code nao foi encontrado nesta maquina."
    echo ""
    echo "Instale o Claude Code primeiro em:"
    echo "https://claude.com/download"
    echo ""
    echo "Depois de instalar, execute este arquivo novamente."
    echo ""
    read -p "Pressione Enter para fechar..."
    exit 1
fi

echo "Conectando ao catalogo da Plataforma AIA..."
echo ""
claude plugin marketplace add SergioMatocanovic/aia-marketplace

echo ""
echo "Instalando o AIA Editor..."
echo ""
claude plugin install aia-editor@aia-marketplace

echo ""
echo "Verificando se ha versao mais recente..."
echo ""
claude plugin marketplace update aia-marketplace
claude plugin update aia-editor@aia-marketplace

echo ""
echo "==================================="
echo "  Pronto! AIA Editor instalado."
echo "==================================="
echo ""
echo "Feche o app Claude (se estiver aberto) e abra novamente"
echo "para comecar a usar o AIA Editor."
echo ""
read -p "Pressione Enter para fechar..."
