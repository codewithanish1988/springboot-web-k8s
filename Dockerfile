FROM eclipse-temurin:17-jre-alpine
ADD target/springboot-web-k8s.jar springboot-web-k8s.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "springboot-web-k8s.jar"]
