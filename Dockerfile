FROM alpine/nginx

RUN apk update \
    && apk upgrade \
    && mkdir  /var/www/acme

COPY nginx.conf /etc/nginx/nginx.conf
CMD ["-c", "/etc/nginx/nginx.conf"]
