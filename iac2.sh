#!/bin/bash
cd /
# Script Bash para automatização de tarefas criado por Rafael Santos
# Bootcamp Linux Experience - Professor Denilson Bonatti
# Repositório Script Bootcamp Linux Experience - Apache

echo "Atualizando os pacotes do sistema"
apt update
clear
echo "Instalando os novos pacotes do sistema"
apt upgrade -y
clear
echo "Instalando os pacotes do servidor Apache"
apt install apache2 unzip -y
clear
cd /tmp
echo "Baixando o código do site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
clear
echo "Descompactando pacote de instalação do site"
unzip main.zip
cd linux-site-dio-main
clear
echo "Concluindo a instalação"
cp -R * /var/www/html
echo "Instalação concluída"
echo "Acesse no seu navegador o endereço http://seuip/ para navegar pelo site"
