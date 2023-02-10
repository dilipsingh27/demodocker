FROM node:alpine

LABEL org.opencontainers.image.source=https://github.com/dilipsingh27/dockertest

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "start"]