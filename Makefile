#!make
#include .env

PWD = $(shell pwd)
DOCKERHUB_VER=v0.1
ARTIFACT=jasperreports-server-cp-6.3.0-bin.zip

all: init build

build:
	@docker build -t dina/jasper:v0.1 .
  #docker build --no-cache=true  -t dina/jasper:v0.2 .


init:
	wget https://archive.org/download/jasperreports-server-cp-6.3.0-bin/${ARTIFACT}
	mv ${ARTIFACT} resources
