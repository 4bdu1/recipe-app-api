#####################################################
# Makefile containing shortcut commands for project #
#####################################################

.PHONY: py-build
py-build:
	docker-compose build

.PHONY: py-test
py-test:
	docker-compose run --rm app sh -c "python manage.py test && flake8"

.PHONY: py-migrations
py-migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"