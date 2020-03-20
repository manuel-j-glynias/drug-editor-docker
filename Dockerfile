FROM node:latest

# Create app directory
WORKDIR /app

COPY package.json /app
RUN npm install
COPY ./build /app/build
COPY ./server /app/server

EXPOSE 3003:3003
CMD [ "node", "server/server.js" ]