FROM openjdk:8-alpine

# cd /opt/app
WORKDIR /app

# Refer to Maven build -> finalName
#ARG JAR_FILE=target/users-api-0.0.1-SNAPSHOT.jar

# cp target/spring-boot-web.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar
#COPY users-api-0.0.1-SNAPSHOT.jar .

# java -jar /opt/app/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]

COPY pom.xml mvnw ./
COPY .mvn/ ./.mvn
RUN ./mvnw dependency:resolve

COPY . .
RUN ./mvnw clean install

CMD ["java", "-jar", "./target/users-api-0.0.1-SNAPSHOT.jar"]

EXPOSE 8083
