#####  VOLUME :

FROM node:alpine

# Dossier dans lequel le code sera sur docker
WORKDIR /app

COPY package.json .

RUN mkdir /uploads
RUN npm install
# RUN va exécuter une commande dans le terminal lors de la création de l'image Docker et non lors de la création du conteneur comme le ferait CMD

COPY . .

EXPOSE 3000
# EXPOSE sert à avertir qu'un port va être utilisé par le conteneur, dans le but de permettre à l'utilisateur de notre image de savoir qu'un port peut être utilisé / mappé lors du lancement du conteneur

# VOLUME ANONYME
VOLUME ["/app/uploads"]

# Pour ajouter des VOLUME ANONYME à notre appli il est poss de ke faire dans Dockerfiles en ajoutant une instruction VOLUME suivie d'un chemin de fichier absolu
# représentant quel dossier va etre branché dans ke volume anonyme

# Par exemple pour avoir un volume anonyme contenant des infirmations d'un conteneur mySQL, on aurait un chemin de type :
# volume anonyme : 
# volume : [ chemin du fichier a sauvegarder ] ou pendant docker run -v /chemin/du/fichier
# VOLUME ["/var/lib/mysql"]
# Volume nommé pas possible dans docker files que sur le run
# -v NOMVOLUME:/CHEMIN/DU/FICHIER

CMD [ "node", "app.js"]

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
