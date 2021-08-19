.PHONY: clean
clean: ## Cleanup database
	rm -fR ./es/data ./db/mysql_data

.PHONY: destory
destory: ## Destroy all environment
	cd ./db; \
	rm -fR mysql_data; \
	cd ../; \
	docker-compose down --rmi all --volumes --remove-orphans;

.PHONY: run
run: ## Shorthand of running docker images
	docker-compose --env-file ./.env up --build;

.PHONY: help
help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'	