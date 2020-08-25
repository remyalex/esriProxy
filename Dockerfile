
#$ docker build -t aspnetapp . $ docker run -d -p 8080:80 --name myapp aspnetapp

FROM php:5.6-apache

#RUN apt-get update && apt-get install -y sqlite3 libsqlite3 \
#&& docker-php-ext-install pdo pdo_sqlite \
#&& docker-php-ext-install OpenSSL \
#&& docker-php-ext-install cURL

# Copy everything else and build
COPY ./proxy.php /var/www/html/
COPY ./proxy.config /var/www/html/
#RUN service apache2 restart

# Build runtime image
WORKDIR /var/www/html/

EXPOSE 80
