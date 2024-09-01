# Automações para textos
---

## Automação de Macros para Manipulação de Texto

Este repositório contém scripts para automação de tarefas relacionadas à manipulação de texto. Atualmente, há duas automações principais: uma em Shell e outra em Python. Ambas as automações têm como objetivo facilitar e acelerar o trabalho com conteúdo textual.

### 1. Automação em Shell: Seleção e Cópia de Template

Este script em Shell foi desenvolvido para selecionar e copiar o conteúdo de um template de texto diretamente para a área de transferência.

#### Funcionamento:
- *Diretório de Templates*: O script busca os arquivos .txt no diretório ~/scripts/templates.
- *Seleção de Arquivo*: Utiliza a ferramenta fzf para permitir a seleção interativa de um arquivo.
- *Cópia de Conteúdo*: Após a seleção, o conteúdo do arquivo escolhido é copiado para a área de transferência usando o xclip.
- *Confirmação e Fechamento*: O script exibe uma mensagem confirmando a cópia e aguarda o usuário pressionar Enter para fechar o terminal.

#### Script:
bash
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
  if [ -z "$FILE" ]; então
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


### 2. Automação em Python: Limpeza de Texto

Este script em Python foi criado para limpar e formatar texto de entrada. Ele remove múltiplos espaços e novas linhas, unificando o texto em uma única linha sem quebras desnecessárias.

#### Funcionamento:
- *Entrada de Texto*: O script lê o texto a partir do stdin.
- *Limpeza*: Remove múltiplos espaços e novas linhas extras, deixando o texto formatado em uma única linha.
- *Saída*: O texto limpo é então impresso no stdout.

#### Script:
python
import sys

def clean_text(text):
    # Remove múltiplos espaços e novas linhas extras
    cleaned_text = ' '.join(text.split())
    return cleaned_text

if __name__ == "__main__":
    input_text = sys.stdin.read()
    print(clean_text(input_text))


### Como Usar

1. *Automação em Shell*: Execute o script para selecionar um template de texto e copiar seu conteúdo para a área de transferência.
   - É necessário ter o fzf e xclip instalados no sistema.

2. *Automação em Python*: Passe o texto que deseja limpar como entrada para o script, que retornará o texto formatado.
   - Exemplo de uso:
     bash
     echo "Texto com   espaços   e   quebras de linha" | python clean_text.py
     

### Requisitos

- *Shell Script*: bash, gnome-terminal, fzf, xclip.
- *Python Script*: Python 3.x.


## Contribution

Contributions are welcome! Feel free to open an issue or submit a pull request with improvements and fixes.

Fork the repository
- Create a branch for your feature or bug fix (git checkout -b feature/MyFeature)
- Commit your changes (git commit -am 'Added MyFeature')
- Push to the branch (git push origin feature/MyFeature)
- Open a Pull Request

## Contact

For more information, please contact:

- Email: robertdsgabriel@gmail.com
  
- GitHub: [r0bert](https://github.com/r0bertds)


