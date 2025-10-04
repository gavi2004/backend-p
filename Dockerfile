# Usa una imagen oficial de Node.js
FROM node:20

# Instala wait-for-it para esperar a que MongoDB esté listo
RUN apt-get update && apt-get install -y wait-for-it

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

# Espera a que MongoDB esté disponible antes de iniciar la app
CMD ["sh", "-c", "wait-for-it mongo:27017 --timeout=30 -- node index.js"]
