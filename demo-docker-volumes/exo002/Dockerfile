FROM python
#On travaille a parti de l'image officielle de Python

WORKDIR /app
# On creer un oddsiier dans lequel notre code sera isolé

COPY requirements.txt . 
# On copie tout ce qui ce trouve dans le dossier ou se trouve Dockerfile dans le dossier courrant du conteneur defini par l'instruction précédent
# . = dossier courrant = demo-docker-basic
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000
# EXPOSE sert à avertir qu'un port va être utilisé par le conteneur, dans le but de permettre à l'utilisateur de notre image de savoir qu'un port peut être utilisé / mappé lors du lancement du conteneur

CMD ["python", "main.py"]
# On fait en sorte d'eexecuter la commade adaptée pour notre appli ici un simple commande comme celle ci dessous

# python main.py 