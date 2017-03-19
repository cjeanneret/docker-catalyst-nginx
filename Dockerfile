FROM alpine
MAINTAINER swisstengu <tengu@tengu.ch>

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY docker-entrypoint.sh /
COPY docker-entrypoint.d/* /docker-entrypoint.d/
RUN chmod -R +x /docker-entrypoint.sh /docker-entrypoint.d/*

ENTRYPOINT ["/docker-entrypoint.sh"]

VOLUME ["/etc/nginx/conf.d/"]
