SRC = srcs/docker-compose.yml
IMGS = $(addprefix srcs-, wordpress mariadb nginx)
VOLS = $(addprefix srcs_, db site)

all:
	docker-compose -f $(SRC) up --build

clean:
	-docker-compose -f $(SRC) down
	-docker rmi $(IMGS)
	
fclean: clean
	-docker volume rm $(VOLS)

re: clean all