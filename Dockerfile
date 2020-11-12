FROM php:7.4-fpm-alpine as build

# Set working directory
WORKDIR /var/www/html

# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
  && docker-php-ext-install mysqli pdo pdo_mysql



# Copy existing application directory
COPY . .
