NAME := nginx

all: clean
	docker build -t $(NAME) .
	docker run -d -p 443:443 nginx

clean:
	-docker stop $(shell docker ps -q)
	-docker rm $(shell docker ps -a -q)
	-docker image rm $(NAME)
