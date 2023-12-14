DC_PATH = srcs/docker-compose.yml

all:
	mkdir -p /home/${USER}/data/wordpress
	mkdir -p /home/${USER}/data/mariadb
	docker-compose -f $(DC_PATH) up --build
#--no-cache

clean:
	docker-compose -f $(DC_PATH) down

fclean: clean
	docker system prune -af
	rm -rf /home/${USER}/data/wordpress
	rm -rf /home/${USER}/data/mariadb
	rm -rf /home/${USER}/data/ngnix
