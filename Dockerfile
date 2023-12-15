FROM mysql:5.7

# Crear un directorio para el microservicio
RUN mkdir /app

# Copiar el código del microservicio al contenedor
COPY src/ /app

# Instalar las dependencias del microservicio
RUN cd /app && npm install

# Iniciar el microservicio
CMD ["npm", "start"]
