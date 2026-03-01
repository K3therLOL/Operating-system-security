all: build

build:
	docker build --no-cache -t lab2 .

run:
	docker run -it --pids-limit 1000 \
		--mount type=bind,source=/home/kether/University/Operating-system-security/exam/2-fork-bomb/logs,target=/output \
		-v /home/kether/.ssh:/root/.ssh:ro \
		lab2 bash

clean:
	docker kill $$(docker ps -q)
