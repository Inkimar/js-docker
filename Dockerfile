FROM tomcat:8.0-jre8

# Copy jasperreports-server-<ver> zip file from resources dir. Build will fail if file not present.
COPY resources/jasperreports-server*zip /tmp/jasperserver.zip

RUN apt-get update -y
RUN apt-get -y upgrade
RUN apt-get install -y postgresql-client unzip xmlstarlet
