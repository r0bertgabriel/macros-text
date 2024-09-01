#!/bin/bash

# Define o diretório onde estão os templates
TEMPLATE_DIR=~/scripts/templates
TEMP_FILE=~/scripts/temp_content.txt

# Abre o terminal e executa o script interativo
gnome-terminal -- bash -c '
  # Define o diretório onde estão os templates
  TEMPLATE_DIR=~/scripts/templates

  # Lista os arquivos .txt no diretório e permite a seleção com fzf
  FILE=$(find "$TEMPLATE_DIR" -name "*.txt" | fzf --prompt="Escolha um arquivo: ")

  # Verifica se a seleção foi cancelada
  if [ -z "$FILE" ]; then
    echo "Seleção cancelada."
    exit 1
  fi

  # Copia o conteúdo do arquivo escolhido para a área de transferência
  cat "$FILE" | xclip -selection clipboard

  # Mensagem opcional para confirmar que o conteúdo foi copiado
  echo "O conteúdo do arquivo $FILE foi copiado para a área de transferência."

  # Mensagem para aguardar o fechamento do terminal
  echo "Pressione Enter para fechar este terminal."

  # Aguarda o usuário pressionar Enter para fechar o terminal
  read -r
'
