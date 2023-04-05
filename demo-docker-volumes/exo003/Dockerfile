FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]


# build 
# docker build -t express

# execution
# docker run -d -p 80:3000 express