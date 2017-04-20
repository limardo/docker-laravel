# docker-laravel
create an app
```
composer create-project --prefer-dist laravel/laravel app
```
or
```
laravel new app
```
after copy `Dockerfile`, `docker-compose.yml` and `site.conf` in app folder.  
Run command in app folder.
```
docker-compose up
```
modify `.env`
```
DB_HOST=db
DB_DATABASE=app
DB_USERNAME=root
DB_PASSWORD=password
```
```
docker-compose exec app php artisan list
```