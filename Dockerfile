FROM jwilder/docker-gen

RUN apk update \
    && apk add nginx \
    && mkdir /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/usr/sbin/nginx"]
