ARG MYSQL_VERSION
FROM mysql:${MYSQL_VERSION}

# 更改容器时区
RUN echo "Asia/shanghai" > /etc/timezone \
  && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime