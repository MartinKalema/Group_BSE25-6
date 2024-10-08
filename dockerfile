FROM node:20-alpine
WORKDIR /app/backend
COPY package.json .
COPY package-lock.json .
RUN npm install
RUN npm install 
COPY . .
EXPOSE 5000
CMD [ "npm",  "start" ]