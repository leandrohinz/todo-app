#FROM node:8.17.0

# install simple http server for serving static content
#RUN npm install -g http-server

# make the 'app' folder the current working directory
#WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
#COPY package*.json ./

# install project dependencies
#RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
#COPY . .

# build app for production with minification
#RUN npm run build

#EXPOSE 8080
#CMD [ "http-server", "dist" ] */

#FROM node:8.17
 
#WORKDIR /frontService
 
#COPY . .
 
# Instala las dependencias
#RUN npm install
 
# Ejecuta el script de construcción
#RUN npm run build
 
#EXPOSE 8080
 
#CMD ["npm", "start"]

FROM node:8.17.0

EXPOSE 8080

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

CMD ["sh", "-c", "npm start" ]