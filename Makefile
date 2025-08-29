MYPY_OPTS:=--ignore-missing-imports --install-types --non-interactive

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

all : build

build: wheel

wheel: pyproject.toml 
	uv build 

lint check:
	uv run ruff gino tests
	uv run pylint -E gino
	uv run mypy $(MYPY_OPTS) --cache-dir=/tmp/ -m gino

fix:
	uv run black gino/*.py tests/*.py

test: build 
	uv install
	uv run pytest -s tests/*.py

run:
	uv run gino run-once

ci: build test
