FROM php:7
RUN apt-get update -qq && apt-get install build-essential libmysqlclient-dev -y
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install nodejs -y
RUN curl -s http://getcomposer.org/installer | php
RUN echo "export PATH=${PATH}:/var/www/vendor/bin" >> ~/.bashrc
RUN mv composer.phar /usr/local/bin/composer
RUN docker-php-ext-install pdo pdo_mysql
WORKDIR /var/www/app
