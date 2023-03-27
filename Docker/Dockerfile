FROM node

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

RUN npm install cross-env

COPY . .

EXPOSE 3000

CMD ["node","server.js"]