FROM node:16

WORKDIR /usr/app

#kopieer alles dat begint met package en eindigt met .json
COPY package*.json .

RUN npm install

#kopieerd alles in de map
COPY . .

#kijken naar port
EXPOSE 3000

CMD ["npm", "start"]