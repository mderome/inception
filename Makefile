DOCKER = docker compose

HOME = /home/mderome/

.PHONY: stop all clean fclean re

all		:
	mkdir -p $(HOME)data/wp_data
	mkdir -p $(HOME)data/db_data
	$(DOCKER) -f srcs/docker-compose.yml --env-file ./srcs/.env up -d --build

stop	:
	$(DOCKER) -f srcs/docker-compose.yml stop

clean:
	docker volume ls -qf dangling=true | xargs -r docker volume rm
	docker system prune -f -a

fclean: stop clean
	rm -rf ${HOME}data

re : fclean all