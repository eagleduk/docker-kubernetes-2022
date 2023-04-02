FROM nginx:stable-alpine

#./nginx/nginx.conf:/etc/nginx/conf.d/default.conf:ro

WORKDIR /etc/nginx/conf.d/

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html/

COPY src .

# RUN mkdir /var/www /var/www/html/ /var/www/html/storage/

RUN chmod 777 -R /var/www/html/storage/