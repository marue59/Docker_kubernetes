FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install
# RUN va exécuter une commande dans le terminal lors de la création de l'image Docker et non lors de la création du conteneur comme le ferait CMD

COPY . .

EXPOSE 80
# EXPOSE sert à avertir qu'un port va être utilisé par le conteneur, dans le but de permettre à l'utilisateur de notre image de savoir qu'un port peut être utilisé / mappé lors du lancement du conteneur

VOLUME ["/app/node_modules"]
# Pour ajouter des volumes anomyme à notre appli il est poss de ke faire dans Dockerfiles en ajoutant une instruction VOLUME suivie d'un chemin de fichier absolu
# représentant quel dossier va etre branché dans ke volume anonyme

# Par exemple pour avoir un volume anonyme contenant des infirmations d'un conteneur mySQL, on aurait un chemin de type :
#VOLUME ["/var/lib/mysql"]

CMD [ "node", "server.js"]

# commande : 
# voir volume
# docker volume ls 
# docker inspect volume NOMMM

# faire contener
# arreter supprimer (k par k) rm
# ajouter un system de volume 
# - v data-mysql:/var/lib/mysql (stocker dans data my sql) => volume nommé
# volume anonyme : -v /var/lib/mysql 
#docker volume ls
