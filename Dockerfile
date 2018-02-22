FROM alpine:3.7

ENV LANG en_US.utf8

RUN set -ex && apk add --no-cache --virtual .fetch-deps \
		                   ca-certificates \
		                   openssl \
                       postgresql \
                       postgresql-dev \
                       make \
                       git \
                       openrc \
             && rm -rf /var/cache/apk/* \
	     && rc-status \
	     && touch /run/openrc/softlevel \
	     && rc-service postgresql start
	     
EXPOSE 5432
VOLUME /var/lib/postgresql/data

COPY docker-entrypoint.sh /
RUN chmod a+x docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["postgres"]
