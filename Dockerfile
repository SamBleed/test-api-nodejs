FROM node:18

WORKDIR /app

COPY package*.json ./

RUN apt-get update && apt-get install -y netcat-openbsd
RUN npm install

COPY . .

EXPOSE 3000

COPY wait-for-mysql.sh .
RUN chmod +x wait-for-mysql.sh

CMD ["./wait-for-mysql.sh"]
