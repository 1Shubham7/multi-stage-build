FROM node:18-alpine AS installer

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:latest

COPY --from=installer /app/build /usr/share/nginx/html
