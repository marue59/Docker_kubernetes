FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]


# build 
#docker build -t my-react-app:latest .

# execution
# docker run -d -p 80:80 my-react-app:latest