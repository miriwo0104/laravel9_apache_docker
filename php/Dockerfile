FROM php:8.1-rc-apache

RUN apt-get update \
  && apt-get install -y zlib1g-dev \
  && apt-get install -y zip unzip \
  && apt-get install -y libzip-dev \
  && apt-get install -y libonig-dev \
  && docker-php-ext-install pdo_mysql mysqli zip \
  && docker-php-ext-enable mysqli

RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer \
  && chmod +x /usr/local/bin/composer
  
RUN a2enmod rewrite

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin

ENV TZ=Asia/Tokyo

WORKDIR /var/www/html