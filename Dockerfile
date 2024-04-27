
FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

ENV PORT=3000 \
    MONGODB_URI='mongodb://root:password@db:27017/api?authSource=admin' \
    JWT_SECRET="g8i4gh049"

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]