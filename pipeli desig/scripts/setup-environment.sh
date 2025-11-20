#!/bin/bash
# Script para configurar el entorno

echo "Configurando el entorno..."
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk maven docker.io

echo "Iniciando Docker..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Agregando usuario al grupo de Docker..."
sudo usermod -aG docker $USER

echo "Entorno configurado exitosamente."
echo "Por favor, cierra sesión y vuelve a iniciarla para aplicar los cambios de grupo."
