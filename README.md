# Docker-TP-Final-3IW-ESGI

Ce projet Docker contient plusieurs containers qui sont utilisés pour héberger des applications web.

## Containers inclus
 - Deux containers nginx sur les ports 8080 et 8081
 - Un container MySQL pour la base de données
 - Deux containers PHP, chacun relié à un nginx et contenant chacun deux projets Laravel qui sont liés à la même base de données
 - Un container PHPMyAdmin sur le port 8082
 - Un container Portainer sur le port 9000
 - Un container surprise sur le port 8090


## Comment lancer le projet

Pour lancer le projet, exécutez la commande suivante:

```bash
docker-compose up
```

Attendez que les containers nginx et PHP soient bien lancés, puis exécutez la commande suivante:

```bash
./setup.sh
```

Cela devrait configurer et lancer tous les containers et les applications associées. Vous devriez être en mesure de accéder aux applications via les ports spécifiés ci-dessus.
