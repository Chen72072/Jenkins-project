FROM node:18-slim

ENV NODE_ENV=development

WORKDIR /code

COPY package.json ./

RUN npm install

COPY . .

RUN npm i -D handlebars@4.5.0

EXPOSE 4000

CMD node index.js