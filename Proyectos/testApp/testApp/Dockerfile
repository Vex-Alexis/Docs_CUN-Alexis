# Utiliza una imagen base con Java 11 (puedes ajustar la versión según tus necesidades)
FROM openjdk:17

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR de la aplicación desde la carpeta local al contenedor
COPY target/tu-api.jar .

# Expone el puerto en el que escuchará la aplicación (ajusta el puerto según tu configuración)
EXPOSE 8080

# Define el comando de inicio de la aplicación
CMD ["java", "-jar", "tu-api.jar"]