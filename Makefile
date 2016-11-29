all: up

up:
	docker-compose up -d

clean:
	docker-compose stop && docker-compose rm --force && sudo rm -rf elasticsearch-data

reup:
	docker-compose stop && docker-compose rm --force && sudo rm -rf elasticsearch-data && docker-compose up -d
