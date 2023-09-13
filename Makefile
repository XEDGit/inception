ifeq ($(shell uname -s),Linux)
    SEP := -
else ifeq ($(shell uname -s),Darwin)
    SEP := _
endif
SRC = srcs
IMGS = srcs$(SEP)wordpress srcs$(SEP)mariadb srcs$(SEP)nginx
VOLS = db site
DCDOWN = docker compose --project-directory $(SRC) down
DCUP = docker compose --project-directory $(SRC) up
DCCLEAN = docker rmi $(IMGS)

all:
	$(DCUP)

clean:
	$(DCDOWN)
	$(DCCLEAN)

fclean: clean
	docker volume rm $(VOLS)

re: clean all