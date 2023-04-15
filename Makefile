# DB_PATH = srcs/requirements/mariadb
# WP_PATH = srcs/requirements/wordpress
# NG_PATH = srcs/requirements/nginx
DC_PATH = srcs/docker-compose.yml

all:
	mkdir -p /home/tnamir/data/wp
	mkdir -p /home/tnamir/data/db
	docker-compose -f $(DC_PATH) build
	docker-compose -f $(DC_PATH) up
#--no-cache

clean:
	docker-compose -f $(DC_PATH) down

fclean: clean
	docker system prune -af
	rm -rf /home/tnamir/data