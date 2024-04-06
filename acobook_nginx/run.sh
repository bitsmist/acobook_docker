BASE=$(cd $(dirname $0);pwd)
docker run \
	--name acobook_nginx \
	--network localhost \
	-p 80:80 \
	-v ${BASE}/conf/tzdata/Japan:/etc/localtime \
	-v ${BASE}/conf/nginx/conf.d:/etc/nginx/conf.d \
	-v ${BASE}/log:/var/log/nginx \
    -v ${BASE}/contents/bitsmist-js_v1:/usr/share/contents/bitsmist-js_v1:ro \
    -v ${BASE}/contents/bitsmist-js-extras_v1:/usr/share/contents/bitsmist-js-extras_v1:ro \
    -v ${BASE}/contents/acobook_app:/usr/share/contents/acobook_app:ro \
	-v ${BASE}/contents/default:/usr/share/nginx/html:ro \
	--rm \
	acobook/nginx
