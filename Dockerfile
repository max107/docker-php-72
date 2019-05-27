FROM php:7.2
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
	apt install -yq unzip zlib1g zlib1g-dev libpng-dev libxml2-dev libicu-dev g++ git
RUN docker-php-ext-configure intl && \
    docker-php-ext-install zip pdo_mysql xml gd bcmath intl sockets
RUN pecl install xdebug && \
    docker-php-ext-enable xdebug
RUN curl --show-error --silent https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
