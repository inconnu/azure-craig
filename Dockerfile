FROM openjdk:11
SHELL ["mkdir", "/home/craig"]
COPY ./app/build/distributions/app.zip /home/craig/app.zip
WORKDIR /home/craig
EXPOSE 8080:8080
RUN ["unzip", "app.zip"]
RUN ["rm", "app.zip"]
RUN ["find", "."]
CMD ["java", "-jar", "app/lib/app.jar"]
