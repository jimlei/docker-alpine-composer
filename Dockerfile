FROM jimlei/alpine-phpcli
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TERM="xterm" \
    UID="1100"

RUN adduser -D -u ${UID} composer && \
    apk --update add \
    wget \
    curl \
    git \
    php5-curl \
    php5-pdo \
    php5-openssl \
    php5-json \
    php5-phar \
    php5-dom && \
    rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

RUN mkdir -p /data && \
    chown -R composer:composer /data
VOLUME /data
WORKDIR /data

USER composer

ENTRYPOINT ["composer"]
