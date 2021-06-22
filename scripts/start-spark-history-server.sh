#!/usr/bin/env bash

export SPARK_HOME=/spark
SPARK_HS_LOG_DIR=$SPARK_HOME/spark-hs-logs
mkdir -p $SPARK_HS_LOG_DIR
LOG=$SPARK_HS_LOG_DIR/spark-hs.out

export SPARK_HISTORY_OPTS='-Dspark.history.fs.logDirectory=hdfs://namenode:9000/user/spark/applicationHistory'

nohup /spark/bin/spark-class org.apache.spark.deploy.history.HistoryServer > $LOG 2>&1 &
