FROM node:20-alpine

WORKDIR /app

# устанавливаем json-server глобально
RUN npm install -g json-server

# копируем файл с данными
COPY db.json ./

EXPOSE 3000

# Render передаёт порт через переменную окружения PORT
CMD ["sh", "-c", "json-server db.json --host 0.0.0.0 --port ${PORT:-3000}"]