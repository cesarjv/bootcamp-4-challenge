FROM node:16-alpine
WORKDIR /home/node/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8888
CMD [ "node", "server.js" ]