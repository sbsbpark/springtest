From devaiccicd.shinhan.com:8443/aicc/infra/cicd/openjdk:11.0.16-slim

WORKDIR /app

COPY ./demo/target/demo-0.0.1-SNAPSHOT.jar /app

RUN commandR 2001:2001 /app

USER 2001

EXPOSE 11080

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]