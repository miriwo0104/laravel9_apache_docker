.PHONY: install
install:
	docker-compose up -d --build
	docker-compose exec php composer install
	docker-compose exec php cp .env.example .env
	docker-compose exec php php artisan key:generate
	docker-compose exec php php artisan migrate:fresh --seed
	docker-compose exec php chmod -R 0777 /var/www/html/public
	docker-compose exec php chmod -R 0777 /var/www/html/bootstrap
	docker-compose exec php chmod -R 0777 /var/www/html/storage

.PHONY: up
up:
	docker-compose up -d

.PHONY: php
php:
	docker-compose exec php bash