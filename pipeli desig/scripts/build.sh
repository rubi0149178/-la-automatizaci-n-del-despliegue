#!/bin/bash
# Script para construir el proyecto

echo "Compilando el proyecto con Maven..."
mvn clean package

if [ $? -eq 0 ]; then
  echo "Construyendo la imagen Docker..."
  docker build -t my-app:latest .
  echo "Imagen Docker construida exitosamente."
else
  echo "Error al compilar el proyecto."
  exit 1
fi
