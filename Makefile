DOCKER = docker-compose

HOME = /home/mderome

.PHONY: stop

all :
	mkdir -p $(HOME)/data/wordpress
	mkdir -p $(HOME)/data/maria_db
	$(DOCKER) -f srcs/docker-compose.yml build
	$(DOCKER) -f srcs/docker-compose.yml up --build

stop :
	$(DOCKER) -f srcs/docker-compose.yml stop

