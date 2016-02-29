FROM jimlei/alpine-phpcli
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

RUN apk --update add \
	wget \
	curl \
	git \
	php-curl \
	php-openssl \
	php-json \
	php-phar \
	php-dom && \
	rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

RUN mkdir -p /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["composer"]
