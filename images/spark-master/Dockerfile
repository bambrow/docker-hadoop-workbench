# Based on https://github.com/big-data-europe/docker-spark/blob/master/master/Dockerfile

FROM bde2020/spark-base:3.1.1-hadoop3.2

LABEL maintainer="Brandon Li <bambrow@foxmail.com>"

COPY master.sh /
COPY config/hive-site.xml /spark/conf/
COPY config/spark-defaults.conf /spark/conf/

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs

EXPOSE 8080 7077 6066

CMD ["/bin/bash", "/master.sh"]