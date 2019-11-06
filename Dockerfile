FROM jwilder/docker-gen

RUN apk update \
    && apk add nginx acme-client libressl \
    && mkdir /run/nginx

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/bin/nginx"]
