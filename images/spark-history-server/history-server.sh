#!/bin/bash

# Based on https://github.com/big-data-europe/docker-spark/blob/master/master/master.sh

export SPARK_HOME=/spark
SPARK_HS_LOG_DIR=$SPARK_HOME/spark-hs-logs
mkdir -p $SPARK_HS_LOG_DIR
LOG=$SPARK_HS_LOG_DIR/spark-hs.out

. "/spark/sbin/spark-config.sh"

. "/spark/bin/load-spark-env.sh"

ln -sf /dev/stdout $LOG

export SPARK_HISTORY_OPTS='-Dspark.history.fs.logDirectory=hdfs://namenode:9000/user/spark/applicationHistory'

cd /spark/bin && /spark/sbin/../bin/spark-class org.apache.spark.deploy.history.HistoryServer >> $LOG