#!/bin/bash
spark-submit --verbose \
  --class org.apache.spark.examples.SparkPi \
  --master yarn \
  --deploy-mode cluster \
  --executor-memory 2G \
  --num-executors 3 \
  /usr/hdp/current/spark2-client/examples/jars/spark-examples*.jar \
  10