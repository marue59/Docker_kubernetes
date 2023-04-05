FROM node:alpine as base

WORKDIR /app

COPY package.json .

RUN react-scripts build

COPY public/ .
COPY src/ .

EXPOSE 3000

CMD ["node", "index.js"]


# build 
# docker build -t express

# execution
# docker run -d -p 80:3000 express