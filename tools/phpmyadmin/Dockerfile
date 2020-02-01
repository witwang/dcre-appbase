ARG PMA_VERSION
FROM phpmyadmin/phpmyadmin:${PMA_VERSION}

RUN apk add -U tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime