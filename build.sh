#! /bin/sh

echo "Image gateway creation"
docker build -t api-gateway -f api-gateway/gateway/Dockerfile .
echo "Image gateway create"

echo "Image catalogue creation"
docker build -t catalog -f catalog/catalog/Dockerfile .
echo "Image catalogue create"

echo "Image movie creation"
docker build -t movies -f movies/movies/Dockerfile .
echo "Image movie create"

echo "Lancement des containaires"
docker-compose up -d 
echo "Containaires lancés"