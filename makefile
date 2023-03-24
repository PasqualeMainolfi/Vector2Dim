PACKAGE_NAME=Vector2dim
VERSION=0.1.1

PYTHON_VERSION = $(shell python -c "import sys; print(".".join(map(str, sys.version_info[:2])))")
PY_310 := $(findstring 3.10, $(PYTHON_VERSION))
PY_311 := $(findstring 3.11, $(PYTHON_VERSION))

.PHONY = build install clean
all = build install clean


build:
	python setup.py sdist

install:
	ifeq ($(PY_310), 3.10)
		pip3.10 install dist/$(PACKAGE_NAME)-$(VERSION).tar.gz
	else ifeq ($(PY_311), 3.11)
		pip3.11 install dist/$(PACKAGE_NAME)-$(VERSION).tar.gz
	else
		@echo "Unsupported python version $(PYTHON_VERSION)"
		@exit 1
	endif

clean:
	rm -rf dist/ build/ *.egg-info/