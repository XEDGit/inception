SRC = srcs/docker-compose.yml
CONTAINERS = wordpress mariadb nginx
IMGS = $(addprefix srcs-, $(CONTAINERS)) $(addprefix srcs_, $(CONTAINERS))
VOLS = $(addprefix srcs_, db site)

all:
	docker-compose -f $(SRC) up --build

clean:
	-docker-compose -f $(SRC) down
	-docker rmi $(IMGS)
	
fclean: clean
	-docker volume rm $(VOLS)

re: clean all