FROM alpine

RUN apk --no-cache add nginx php-fpm php-zip php-tokenizer php-fileinfo php-dom php-xmlwriter php-xml php-session php-pdo_mysql php-zlib php-curl composer npm && \
mkdir /run/nginx
ADD default.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/html

EXPOSE 80

CMD php-fpm7 && nginx && npm run watch