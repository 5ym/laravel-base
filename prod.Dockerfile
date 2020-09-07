FROM alpine

RUN apk --no-cache add nginx php-fpm php-zip php-tokenizer php-fileinfo php-dom php-xmlwriter php-xml php-session php-pdo_mysql php-zlib php-curl composer npm && \
mkdir /run/nginx
ADD default.conf /etc/nginx/conf.d/default.conf
WORKDIR /var/www/html
ADD . .
RUN composer install && npm i && npm run prod && rm -rf node_modules && apk del --purge composer npm

EXPOSE 80

CMD php-fpm7 && nginx -g "daemon off;"