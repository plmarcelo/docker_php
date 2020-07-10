FROM php:7.4.8-apache

MAINTAINER Pedro de la Lastra <plmarcelo@gmail.com>

RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql opcache \
    && yes | pecl install xdebug-2.8.1 \
    && docker-php-ext-enable xdebug
