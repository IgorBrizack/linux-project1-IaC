#!/bin/bash

echo "Atualizando o Linux e instalando o Apache2 e o unzip"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando arquivos da aplicação.."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio

echo "Transferindo os aruivos Html para o meu servidor Apache"

cp -R * /var/www/html/
