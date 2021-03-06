all:
	python -m pytest -vv

install:
	python setup.py install

test:
	python -m pytest -vv

image:
	docker build -t $(tag) .

syntax-check:
	flake8 atomicapp

clean:
	python setup.py clean --all
