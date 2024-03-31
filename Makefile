all: build up

build:
	mkdir -p /home/babkar/data/mariadb
	mkdir -p /home/babkar/data/wordpress
	docker-compose -f srcs/docker-compose.yaml build --no-cache

up:
	docker-compose -f srcs/docker-compose.yaml up

stop:
	docker-compose -f srcs/docker-compose.yaml stop

down:
	docker-compose -f srcs/docker-compose.yaml down

fclean: down
	sudo rm -rf /home/babkar/data
