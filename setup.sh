#!/bin/bash

# Récupère les IDs des conteneurs Docker dont le nom contient "php"
ids=$(docker ps --format '{{.ID}}: {{.Names}}' | grep "php" | cut -d ':' -f 1)


# Pour chaque ID de conteneur
for id in $ids; do
  # Exécute la commande "composer install" dans le conteneur
  docker exec $id composer install 0>> /dev/null 1>> /dev/null
  # Affiche un message
  echo "Commande 'composer install' exécutée dans le conteneur $id"

  # Exécute la commande "npm install" dans le conteneur
  docker exec $id npm install 0>> /dev/null 1>> /dev/null
  # Affiche un message
  echo "Commande 'npm install' exécutée dans le conteneur $id"

  # Exécute la commande "npm run build" dans le conteneur
  docker exec $id npm run build 0>> /dev/null 1>> /dev/null
  # Affiche un message
  echo "Commande 'npm run build' exécutée dans le conteneur $id"

  # Exécute la commande "php artisan migrate:fresh" dans le conteneur
  docker exec $id php artisan migrate:fresh 0>> /dev/null 1>> /dev/null
  # Affiche un message
  echo "Commande 'php artisan migrate:fresh' exécutée dans le conteneur $id"
done
