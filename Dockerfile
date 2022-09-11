FROM ubuntu:18.04
WORKDIR /home/node/app
# Update all
RUN apt-get update
# We directly answer the questions asked using the printf statement
RUN apt-get install curl -y
# Get NodeJs Version 16
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs -y
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8888
CMD [ "node", "index.js" ]
