.PHONY: install-pre-commit
install-pre-commit:
	@pre-commit install
	@pre-commit install --hook-type commit-msg


.PHONY: pre-commit
pre-commit:
	@pre-commit run


.PHONY: format
format:
	@uv run ruff format


.PHONY: lint
lint:
	@uv run ruff check --fix --output-format concise


.PHONY: type
type:
	@uv run ty check


.PHONY: check
check: format lint type


.PHONY: test
test:
	@uv run pytest
