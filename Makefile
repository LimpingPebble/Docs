
all: install build

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-10s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: ## Install dependencies.
	pip install pip --upgrade
	pip install -r requirements.txt

serve: ## Serve the documentation.
	mkdocs serve --strict

build: ## Build the documentation.
	mkdocs build --strict

.PHONY: docs
