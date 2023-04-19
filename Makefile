DC_PATH = srcs/docker-compose.yml

all:
	mkdir -p /home/tnamir/data/wordpress
	mkdir -p /home/tnamir/data/mariadb
	docker-compose -f $(DC_PATH) up --build
#--no-cache

clean:
	docker-compose -f $(DC_PATH) down

fclean: clean
	docker system prune -af
	rm -rf /home/tnamir/data