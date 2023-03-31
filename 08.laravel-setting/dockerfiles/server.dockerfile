FROM nginx:stable-alpine

RUN mkdir /var/www /var/www/html/ /var/www/html/storage/

RUN chmod 777 -R /var/www/html/storage/