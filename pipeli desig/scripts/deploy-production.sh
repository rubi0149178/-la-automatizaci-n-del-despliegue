#!/bin/bash
# Script para desplegar en producción

echo "Desplegando en el entorno de producción..."
kubectl apply -f kubernetes/deployment.yaml --namespace=production
kubectl apply -f kubernetes/service.yaml --namespace=production

if [ $? -eq 0 ]; then
  echo "Despliegue en producción exitoso."
else
  echo "Error al desplegar en producción."
  exit 1
fi
#!/bin/bash
# Script para desplegar en producción

echo "Desplegando en el entorno de producción..."
kubectl apply -f kubernetes/deployment.yaml --namespace=production
kubectl apply -f kubernetes/service.yaml --namespace=production

if [ $? -eq 0 ]; then
  echo "Despliegue en producción exitoso."
else
  echo "Error al desplegar en producción."
  exit 1
fi
