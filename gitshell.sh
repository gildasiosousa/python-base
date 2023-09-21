#!/bin/bash

# Verifica se o repositório git está configurado
if [ ! -d .git ]; then
  echo "Este diretório não é um repositório Git. Certifique-se de estar no diretório correto."
  exit 1
fi

# Adiciona todos os arquivos ao repositório
git add .

# Faz um commit com uma mensagem
git commit -m "Atualização automática"

# Faz o push das alterações para o repositório remoto (geralmente 'origin')
git push origin master  # Altere 'master' para o nome do seu branch, se necessário

# Verifica se o push foi bem-sucedido
if [ $? -eq 0 ]; then
  echo "Push bem-sucedido!"
else
  echo "Erro ao fazer push."
fi
