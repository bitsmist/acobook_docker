BASE=$(cd $(dirname $0);pwd)
docker run \
	--name acobook_phpfpm \
	--network host \
	-p 9000:9000 \
    -v ${BASE}/conf/tzdata/Japan:/etc/localtime \
    -v ${BASE}/conf/php/php.ini:/usr/local/etc/php/php.ini \
    -v ${BASE}/conf/php/conf.d/docker-php-ext-xdebug.ini:/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    -v ${BASE}/conf/php-fpm/php-fpm.d/www.conf:/usr/local/etc/php-fpm.d/www.conf \
	-v ${BASE}/log:/usr/local/var/log \
    -v ${BASE}/contents/bitsmist-server_v1:/usr/share/contents/bitsmist-server_v1:ro \
    -v ${BASE}/contents/acobook_api:/usr/share/contents/acobook_api:ro \
    -v ${BASE}/contents/acobook_server:/usr/share/contents/acobook_server:ro \
	-v ${BASE}/contents/default:/usr/share/nginx/html:ro \
	--rm \
	acobook/nginx
