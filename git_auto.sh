#!/bin/bash
########################################################################################
# Arquivo para automatizar : git commit, git add, git push                             #
#									                                                   #	
# Nome: git_auto.sh							                                           #
#									                                                   #
# Autor: José Ivan G da Silva (ivan.geraldo@gmail.com)	                               #
# Data: 05/07/2023							                                           #
#									                                                   #
# Descrição: Ao terminar a fase do projeto executar na pasta raiz do diretorio,        #
# Será excuta a adição o comitt com o comentario da data da alteração,horas e minutos  #
#				                                                     				   #
# Uso: ./git_auto.sh 						                                           #
# NOW=$(date +'%Y-%m-%d %H:%M:%S')	                                                   #
########################################################################################

NOW=$(date +'%d-%m-%Y %H:%M:%S')
#add arquivo
git add .
sleep 3

echo "Digite a Mensagem do Comit"
read -p "Digite sua Mensagem de Commit: " mensagem

# add comentarios : Noinicio vem a data, após pode-se mudar a descrição para uma da sua escolha
git commit -m "'$mensagem '$NOW"
sleep 3
git push

#!/bin/bash

# Pergunta o nome e salva na variável 'nome'
#   read -p "Digite seu nome: " nome
#   echo "Olá, $nome!"

# Pergunta a idade ocultando a digitação (ideal para senhas) usando -s
#   read -s -p "Digite sua senha: " senha
#   echo
#   echo "Senha cadastrada com sucesso."