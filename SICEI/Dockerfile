
FROM node:18.17.1-slim
WORKDIR /app
COPY package.json .
COPY app.js .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]