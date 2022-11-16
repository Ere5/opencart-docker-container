.PHONY: default
default: help

.PHONY: help
help: ## Get this help.
	@echo Tasks:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: build
build:  ## Build docker containers
	docker-compose build && \
	docker-compose up -d

.PHONY: run
run: ## Start docker containers
	@docker-compose up -d

.PHONY: restart
restart: ## Restarts all docker containers
	@docker-compose restart

.PHONY: stop
stop: ## Stop docker containers
	@docker-compose stop

.PHONY: ssh
ssh: ## Connect to docker containers
	@docker-compose exec php bash
