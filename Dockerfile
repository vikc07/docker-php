FROM php:5.6-apache
MAINTAINER Vikram Chauhan <chauhanv@outlook.com>

# Install PDO MySQL
RUN apt-get -y update \
 && apt-get -y install php5-mysql \
 && docker-php-ext-install -j$(nproc) pdo_mysql

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Copy Custom PHP.ini file
COPY php.ini /usr/local/etc/php/
