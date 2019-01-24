FROM php:7.0
ENV DEBIAN_FRONTEND=noninteractive
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && chmod +x /usr/local/bin/composer
RUN apt-get update && \
    apt-get install -yq libmemcached-dev zlib1g zlib1g-dev libpng-dev libxml2-dev libicu-dev g++
RUN docker-php-ext-configure intl && \
    docker-php-ext-install zip pdo_mysql xml gd bcmath intl sockets
RUN pecl install xdebug mongodb memcached && \
    docker-php-ext-enable xdebug mongodb memcached