#!/bin/sh

echo "⏳ Esperando a que MySQL esté listo en $DB_HOST:$DB_PORT..."

while ! nc -z "$DB_HOST" "$DB_PORT"; do
  sleep 1
done

echo "✅ MySQL está listo. Iniciando la aplicación..."
exec npm start
