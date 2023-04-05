#####  VOLUME :
FROM python

WORKDIR /app

COPY requirements.txt .

RUN apt-get update 
RUN apt-get install -y default-libmysqlclient-dev gcc 
RUN rm -rf /var/lib/apt/lists/

RUN pip install -r requirements.txt

# RUN va exécuter une commande dans le terminal lors de la création de l'image Docker et non lors de la création du conteneur comme le ferait CMD
COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
