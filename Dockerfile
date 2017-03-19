FROM alpine
MAINTAINER swisstengu <tengu@tengu.ch>

ADD nginx.conf /etc/nginx/conf.d/default.conf


VOLUME ["/etc/nginx/conf.d/default.conf"]
