FROM openjdk:16-jdk-alpine

RUN ls -la

ENTRYPOINT [ "ls" ]