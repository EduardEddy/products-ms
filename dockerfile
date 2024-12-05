FROM node:21-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
copy package-lock.json ./

RUN npm install

copy . .

RUN npx prisma generate

EXPOSE 3000