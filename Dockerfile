FROM openjdk:8
EXPOSE 8080
ADD target/demo_ci_cd.jar demo_ci_cd.jar
ENTRYPOINT ["java","-jar","/demo_ci_cd.jar"]











