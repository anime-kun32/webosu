FROM node:20-alpine

RUN apk add --no-cache nginx

WORKDIR /app

COPY package*.json ./
RUN npm install || true

COPY . .
COPY docker/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD sh -c "node api.js & nginx -g 'daemon off;'"
