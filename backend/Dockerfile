# Usa una imagen oficial de Node.js
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la app
COPY . .

# Expone el puerto 3000 (ajusta si usas otro)
EXPOSE 3000

# Comando por defecto para iniciar la app
CMD ["npm", "start"]
