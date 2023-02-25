# Definir la imagen base
FROM node:latest

# Crear un directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo package.json y package-lock.json a /app
COPY package*.json /app/

# Instalar las dependencias del proyecto con npm
RUN npm install

# Copiar el resto del código del proyecto a /app
COPY . /app

# Exponer el puerto del servidor
EXPOSE 7777

# Iniciar el servidor de Express
CMD ["npm", "start"]