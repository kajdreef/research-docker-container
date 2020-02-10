DOCKER_FILE=Dockerfile
name=spiderlab
tag=latest

all: build run

build:
	docker build  -f ${DOCKER_FILE} -t ${name}:${tag} .

run:
	docker run -t -i ${name}:${tag}