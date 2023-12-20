ifneq ($(shell uname -s),Darwin)
    SEP := _
else
    SEP := -
endif
SRC = srcs/docker-compose.yml
IMGS = srcs$(SEP)wordpress srcs$(SEP)mariadb srcs$(SEP)nginx
VOLS = db site

all:
	docker-compose -f $(SRC) up

clean:
	docker-compose -f $(SRC) down
	docker rmi $(IMGS)
	
fclean: clean
	docker volume rm $(VOLS)

re: clean all