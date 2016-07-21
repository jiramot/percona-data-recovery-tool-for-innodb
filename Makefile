.PHONY: build up rm stop ps
build:
	docker build -t jiramot/percona-data-recovery-tool-for-innodb:0.5 .

push:
	docker push jiramot/percona-data-recovery-tool-for-innodb:0.5

default: build
