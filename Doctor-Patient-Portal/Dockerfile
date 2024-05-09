FROM openjdk:11
WORKDIR /dpps
COPY . /dpps/
EXPOSE 8083
COPY .env ./
ENV MYSQL_HOST=$MYSQL_HOST
ENV MYSQL PORT=$MYSQL_PORT
ADD target/Doctor-Patient-Portal.war Doctor-Patient-Portal.war
ENTRYPOINT ["java","-jar","Doctor-Patient-Portal.war"]


