FROM node:16-alpine3.15

WORKDIR /app

COPY package.json ./
RUN yarn install --prod --frozen-lockfile

COPY . .

EXPOSE 4000

