all: build

build:
	docker build --no-cache -t lab3 .

run:
	docker run -it lab3 bash

clean:
	docker kill $$(docker ps -q)
