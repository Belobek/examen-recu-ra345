# Usamos una imagen de Java 23 para correr la app
FROM container-registry.oracle.com/java/openjdk:23-slim

# Copiamos el archivo .jar que generó Maven en el paso anterior
# Nota: Asegúrate de que el nombre coincida con lo que genera tu pom.xml
COPY target/*.jar app.jar

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app.jar"]
