VENV ?= .venv
PYTHON ?= python3
VENV_PYTHON := $(VENV)/bin/python
VENV_PIP := $(VENV)/bin/pip
CZ := $(VENV)/bin/cz

.PHONY: setup install-hooks verify validate-html validate-domain commit-check release-dry-run

setup:
	$(PYTHON) -m venv $(VENV)
	$(VENV_PIP) install -r requirements-dev.txt
	$(MAKE) install-hooks

install-hooks:
	git config core.hooksPath .githooks
	chmod +x .githooks/commit-msg
	@echo "Git hooks installed (.githooks/commit-msg)."

verify: validate-html validate-domain
	@echo "Verification completed."

validate-html:
	test -f index.html
	grep -q "<html" index.html
	grep -q "</html>" index.html

validate-domain:
	test -f CNAME
	grep -q "^mylibsystems.com$$" CNAME

commit-check:
	@if [ -z "$(MSG)" ]; then \
		echo "Usage: make commit-check MSG='feat: your message'"; \
		exit 1; \
	fi
	@tmp_file=$$(mktemp); \
	echo "$(MSG)" > $$tmp_file; \
	$(CZ) check --commit-msg-file $$tmp_file; \
	rm -f $$tmp_file

release-dry-run:
	$(CZ) bump --dry-run
