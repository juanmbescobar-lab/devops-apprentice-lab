

COMPOSE_FILE := infra/local/docker-compose.yml
ENV_FILE     := infra/local/.env

DC := docker compose -f $(COMPOSE_FILE) --env-file $(ENV_FILE)

.PHONY: help up down ps logs rebuild clean health


up:
	$(DC) up -d --build

down:
	$(DC) down

ps:
	$(DC) ps

logs:
	$(DC) logs -f --tail=100

rebuild:
	$(DC) build --no-cache
	$(DC) up -d

clean:
	$(DC) down -v

health:
	@python3 -c "import urllib.request; print(urllib.request.urlopen('http://localhost:8000/health').read().decode())"
