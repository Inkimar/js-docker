#!make
#include .env

PWD = $(shell pwd)
DOCKERHUB_VER=v0.1
ARTIFACT=jasperreports-server-cp-6.3.0-bin.zip

all: init build

init:
	test -f ${ARTIFACT} || wget https://archive.org/download/jasperreports-server-cp-6.3.0-bin/${ARTIFACT}
	mv ${ARTIFACT} resources

build:
	@docker build -t dina/jasper:v0.1 .
  #docker build --no-cache=true  -t dina/jasper:v0.2 .
