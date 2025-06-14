#!/bin/bash

# Este script renomeia arquivos .png na pasta atual para o padrão throbber-NNNN.png.

# Define o prefixo do nome dos arquivos
PREFIXO="throbber-"

# Define o número inicial para a sequência
NUMERO_INICIAL=1

# Contador para o nome dos arquivos
contador=$NUMERO_INICIAL

# Itera sobre todos os arquivos .png na pasta atual
for arquivo in *.png; do
    # Verifica se é um arquivo (e não um diretório ou se não há arquivos .png)
    if [ -f "$arquivo" ]; then
        # Formata o número com 4 dígitos, preenchendo com zeros à esquerda
        novo_nome=$(printf "%s%04d.png" "$PREFIXO" "$contador")

        # Renomeia o arquivo
        mv -- "$arquivo" "$novo_nome"
        echo "Renomeado '$arquivo' para '$novo_nome'"

        # Incrementa o contador
        ((contador++))
    fi
done

echo "Processo concluído."
