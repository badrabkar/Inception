all: build up

build:
	mkdir -p /Users/babkar/data/mariadb
	mkdir -p /Users/babkar/data/wordpress
	docker-compose -f srcs/docker-compose.yaml build

up:
	docker-compose -f srcs/docker-compose.yaml up

clean:
	@docker container rm -f $(shell docker container ls -aq) 2> /dev/null || true
	@docker rmi $(shell docker images -aq) 2> /dev/null || true

fclean : clean
	@docker volume rm $(shell docker volume ls -q) 2> /dev/null || true
	@rm -rf /Users/babkar/data/mariadb
	@rm -rf /Users/babkar/data/wordpress