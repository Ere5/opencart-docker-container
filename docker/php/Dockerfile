FROM php:8.1-apache

WORKDIR /var/www

RUN apt-get update --fix-missing
RUN apt-get install -y curl build-essential libssl-dev \
    zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libzip-dev zip git

RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install mysqli opcache pdo pdo_mysql zip gd

RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin --version=2.4.4  && \
    echo "export COMPOSER_HOME=/var/www/.composer" >> ~/.bashrc

RUN mkdir /var/www/var || true && \
    chmod -R 777 /var/www/var
