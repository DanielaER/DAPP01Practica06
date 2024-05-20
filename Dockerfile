FROM maven:3.8.4-jdk-11 AS build

WORKDIR /app

# Copiar el archivo pom.xml para descargar las dependencias
COPY pom.xml .

# Descargar dependencias
RUN mvn dependency:go-offline

# Copiar el resto de los archivos
COPY src ./src

# Compilar la aplicación y crear el archivo WAR
RUN mvn package

# Construir la imagen final basada en Tomcat
FROM tomcat:9.0.87-jdk11

# Copiar el archivo WAR de la etapa de compilación
COPY --from=build /app/target/DAPP01Practica05-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps

# Cambiar permisos si es necesario
RUN chmod 644 /usr/local/tomcat/webapps/DAPP01Practica05-0.0.1-SNAPSHOT.war

# Exponer el puerto 8080
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]
