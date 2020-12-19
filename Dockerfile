ARG PHP_IMAGE=php:7.4.13-fpm-alpine

FROM $PHP_IMAGE

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
