NAME = jiramot/percona-data-recovery-tool-for-innodb:0.5

.PHONY: build push shell

build:
	docker build -t $(NAME) .

shell: build
	docker run --rm --name percona -it $(NAME) /bin/bash

push:
	docker push $(NAME)

default: build
