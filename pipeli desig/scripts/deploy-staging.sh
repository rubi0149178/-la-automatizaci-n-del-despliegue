#!/bin/bash
# Script para ejecutar pruebas

echo "Ejecutando pruebas unitarias..."
mvn test

if [ $? -eq 0 ]; then
  echo "Pruebas unitarias ejecutadas exitosamente."
  echo "Ejecutando pruebas de integración..."
  docker run my-app pytest tests/integration/
else
  echo "Error en las pruebas unitarias."
  exit 1
fi
