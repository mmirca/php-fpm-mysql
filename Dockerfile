ARG PHP_IMAGE=php:7.4.13-fpm-alpine

FROM $PHP_IMAGE

# Install MySQL
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

# Install GD por image processing
RUN apk add jpeg-dev libpng-dev
RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd
