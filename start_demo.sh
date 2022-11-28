#!/bin/bash

DOCKER_COMPOSE_FILE=docker-compose-spark3.0.2.yml

SCRIPT_PATH=$(cd `dirname $0`; pwd)
docker compose -f ${SCRIPT_PATH}/${DOCKER_COMPOSE_FILE} down
docker compose -f ${SCRIPT_PATH}/${DOCKER_COMPOSE_FILE} pull
sleep 5

docker compose -f ${SCRIPT_PATH}/${DOCKER_COMPOSE_FILE} up -d
sleep 15

docker exec -it namenode hdfs dfs -mkdir -p /user/spark/applicationHistory
docker cp ${SCRIPT_PATH}/scripts/spark-hive-site.xml spark-master:/spark/conf/hive-site.xml
docker cp ${SCRIPT_PATH}/scripts/spark-defaults.conf spark-master:/spark/conf/spark-defaults.conf
docker exec -itd spark-master /spark/bin/spark-class org.apache.spark.deploy.history.HistoryServer
