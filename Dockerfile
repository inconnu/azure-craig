FROM openjdk:11
SHELL ["mkdir", "/home/craig"]
COPY ./app/build/classes/java/main /home/craig
WORKDIR /home/craig
EXPOSE 8080
SHELL ["find", "."]
CMD ["java", "-cp", ".", "azure.craig.App"]
