FROM openjdk:8-jdk-alpine

COPY *.jar app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
