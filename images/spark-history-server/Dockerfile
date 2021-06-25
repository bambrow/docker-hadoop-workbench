# Based on https://github.com/big-data-europe/docker-spark/blob/master/master/Dockerfile

FROM bde2020/spark-base:3.1.1-hadoop3.2

LABEL maintainer="Brandon Li <bambrow@foxmail.com>"

COPY history-server.sh /
COPY config/spark-defaults.conf /spark/conf/

EXPOSE 18080

CMD ["/bin/bash", "/history-server.sh"]