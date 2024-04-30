FROM openjdk:11
WORKDIR /dpp
COPY . /dpp/
EXPOSE 8083
ADD target/Doctor-Patient-Portal.war Doctor-Patient-Portal.war
ENTRYPOINT ["java","-jar","/Doctor-Patient-Portal.war"]


