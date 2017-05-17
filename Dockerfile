# Copyright (c) 2016. TIBCO Software Inc.
# This file is subject to the license terms contained
# in the license file that is distributed with this file.
# version: 6.3.0-v1.0.4
FROM tomcat:8.0-jre8

# Copy jasperreports-server-<ver> zip file from resources dir. Build will fail if file not present.
COPY resources/jasperreports-server*zip /tmp/jasperserver.zip

# får fel
#RUN apt-get update && apt-get -y upgrade

# the below gives
# Err http://security.debian.org jessie/updates InRelease
# Err http://deb.debian.org jessie InRelease

RUN apt-get update && apt-get install -y postgresql-client unzip xmlstarlet
