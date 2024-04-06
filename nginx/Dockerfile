FROM nginx:1.25-alpine

RUN apk --update --no-cache add shadow
RUN usermod  --uid 1000 nginx
RUN groupmod --gid 1000 nginx
RUN apk del shadow
