#!/bin/bash
cd /
# Script Bash para automatização de tarefas criado por Rafael Santos
# Bootcamp Linux Experience - Professor Denilson Bonatti
# Repositório Script Bootcamp Linux Experience - Apache

echo "Atualizando os pacotes do sistema"
apt update
ls
echo "Instalando os novos pacotes do sistema"
apt upgrade -y
ls
echo "Instalando os pacotes do servidor Apache"
apt install apache2 unzip -y
ls
cd /tmp
echo "Baixando o código do site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
ls
echo "Descompactando pacote de instalação do site"
unzip main.zip
cd linux-site-dio-main
ls
echo "Concluindo a instalação"
cp -R * /var/www/html
echo "Instalação concluída"
