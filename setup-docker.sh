#!/bin/bash

echo "[+] Creando .dockerignore..."
cat <<EOF > .dockerignore
node_modules
.env
npm-debug.log
EOF

echo "[+] Creando Dockerfile..."
cat <<EOF > Dockerfile
FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
EOF

echo "[+] Creando docker-compose.yml..."
cat <<EOF > docker-compose.yml
version: '3.8'
services:
  db:
    image: mysql:8.0
    container_name: mysql-node
    environment:
      MYSQL_ROOT_PASSWORD: clave123
      MYSQL_DATABASE: midb
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql

  api:
    build: .
    container_name: node-api
    ports:
      - "3000:3000"
    environment:
      DB_HOST: db
      DB_USER: root
      DB_PASSWORD: clave123
      DB_NAME: midb
      PORT: 3000
    depends_on:
      - db
    volumes:
      - .:/app
    restart: always

volumes:
  db_data:
EOF

echo "[+] Archivos generados correctamente ✅"
echo "🚀 Ejecuta: docker-compose up --build"
