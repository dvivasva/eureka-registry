FROM openjdk:11.0-oracle
ARG JAR_FILE=build/libs/eureka-registry-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} eureka.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/eureka.jar"]