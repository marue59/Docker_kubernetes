#####  VOLUME :
FROM mysql

WORKDIR /app

ENV MYSQL_DATABASE=todo_db
ENV MYSQL_ROOT_PASSWORD=password

# RUN va exécuter une commande dans le terminal lors de la création de l'image Docker et non lors de la création du conteneur comme le ferait CMD
COPY create_todo_items_table.sql /docker-entrypoint-initdb.d/create_todo_items_table.sql

