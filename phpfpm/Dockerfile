FROM php:8.5-fpm-alpine

RUN apk --update --no-cache add shadow
RUN usermod  --uid 1000 www-data
RUN groupmod --gid 1000 www-data
RUN apk del shadow

RUN \
	docker-php-ext-install -j$(nproc) pdo_mysql mysqli
# RUN apk --no-cache add --virtual .buildtools \
# 		build-base \
# 		libffi-dev && \
# 	pecl install xdebug && \
# 	apk del .buildtools && \
# 	docker-php-ext-enable xdebug
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
