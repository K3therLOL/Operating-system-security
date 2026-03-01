all: build

build:
	docker build --no-cache -t lab2 .

run:
	docker run -it --pids-limit 1000 \
		--mount type=bind,source=/home/kether/University/Operating-system-security/exam/2-fork-bomb/logs,target=/output \
		lab2 bash

clean:
	docker kill $$(docker ps -q)
