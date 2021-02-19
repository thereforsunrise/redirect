all: go

down:
	@docker-compose down --remove-orphans

up:
	@docker-compose up -d

go: down up

logs:
	@docker logs -f redirect

.PHONY: up down go logs
