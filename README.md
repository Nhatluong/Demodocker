## Docker

step1 : pull project php-docker.

step 2: tạo file .env trong project và sửa file sửa các key tương ứng như sau:
DB_CONNECTION=mysql
DB_HOST=database
DB_PORT=3306
DB_DATABASE=name_database_your
DB_USERNAME=user_database_your
DB_PASSWORD=password_user_your

step 3 build docker composer: docker-compose up

step 4 chạy project:
	- docker-compose exec app composer install
	- docker-compose exec app php artisan key:generate
	- docker-compose exec app php artisan migrate
	gõ lên trình duyệt :http://localhost:3000/
