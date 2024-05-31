ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /opt

RUN apk update \
    && apk --no-cache add apcupsd \
		curl \
		jq \
		php83 \
		php83-cli \
		php83-curl \
		php83-iconv \
		php83-json \
		php83-mbstring \
		php83-openssl \
		php83-pcntl \
		php83-phar \
		php83-posix \
		unzip \
    && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ADD ["https://github.com/evgenyvolferts/apcupsd2mqtt-php/archive/refs/heads/master.zip", "/opt/"]

RUN unzip master.zip && mv /opt/apcupsd2mqtt-php-master/ /opt/apcupsd2mqtt-php

WORKDIR /opt/apcupsd2mqtt-php
RUN composer install

WORKDIR /

COPY rootfs /

COPY configure.sh /opt/
RUN chmod a+x /opt/configure.sh