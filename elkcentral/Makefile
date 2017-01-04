all: up

up:
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

clean:
	docker-compose stop && docker-compose rm --force && sudo rm -rf elasticsearch-data

reup:
	docker-compose stop && docker-compose rm --force && sudo rm -rf elasticsearch-data && docker-compose up -d

pull:
	git pull && make reup
