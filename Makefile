DOCKER_COMPOSE_FILE=srcs/docker-compose.yml


all:  build start

build: CREATE_VOL_DIR
	docker-compose -f $(DOCKER_COMPOSE_FILE) build

start:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

CREATE_VOL_DIR:
	mkdir -p /home/samajat/data/mariadb_data && mkdir -p /home/samajat/data/wordpress_data

RM_VOL_DIR:
	rm -rf /home/samajat

stop:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

clean:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down --volumes && make RM_VOL_DIR

ps:
	docker-compose -f $(DOCKER_COMPOSE_FILE) ps

volumes:
	docker-compose -f $(DOCKER_COMPOSE_FILE) config --volumes

login-db:
	docker-compose -f $(DOCKER_COMPOSE_FILE) exec mariadb bash

login-ng:
	docker-compose -f $(DOCKER_COMPOSE_FILE) exec nginx bash

login-wp:
	docker-compose -f $(DOCKER_COMPOSE_FILE) exec wordpress bash

rm-containers: clean
	docker-compose -f $(DOCKER_COMPOSE_FILE) rm -f

rm-images: clean
	docker-compose -f $(DOCKER_COMPOSE_FILE) rm -f
	docker images -q | xargs docker rmi -f

rm-all: rm-containers rm-images

re: rm-all all
