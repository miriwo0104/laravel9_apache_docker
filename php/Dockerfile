FROM php:8.0.16-apache

RUN apt-get update \
  && apt-get install -y zlib1g-dev mariadb-client vim libzip-dev \
     libfreetype6-dev \
     libjpeg62-turbo-dev \
     libpng-dev \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
  && docker-php-ext-install -j$(nproc) gd zip pdo_mysql

# composer install
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --version=2.2.6
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

# Node.js install
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs && \
    npm i -g n && \
    n 16
RUN npm i -g --unsafe-perm node-sass
RUN npm i -g yarn lebab

WORKDIR /var/www/html

ENV TZ=Asia/Tokyo
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH $PATH:/composer/vendor/bin
#FROM php:8.1-rc-apache
#
#RUN apt-get update \
#  && apt-get install -y zlib1g-dev \
#  && apt-get install -y zip unzip \
#  && apt-get install -y libzip-dev \
#  && apt-get install -y libonig-dev \
#  && docker-php-ext-install pdo_mysql mysqli zip \
#  && docker-php-ext-enable mysqli
#
#RUN curl -sS https://getcomposer.org/installer | php \
#  && mv composer.phar /usr/local/bin/composer \
#  && chmod +x /usr/local/bin/composer
#  
#RUN a2enmod rewrite
#
#ENV COMPOSER_ALLOW_SUPERUSER 1
#ENV COMPOSER_HOME /composer
#ENV PATH $PATH:/composer/vendor/bin
#
#ENV TZ=Asia/Tokyo
#
#WORKDIR /var/www/html