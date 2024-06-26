FROM node:21-alpine3.18

WORKDIR /app 

COPY package*.json ./

RUN npm install

COPY . .

COPY ./dist ./dist

CMD ["npm", "run", "start:dev"]
