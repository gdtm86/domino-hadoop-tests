#!/bin/bash
spark2-submit --class org.apache.spark.examples.SparkPi --master yarn --deploy-mode client --num-executors 10 --executor-memory 4g --executor-cores 4 /opt/cloudera/parcels/SPARK2/lib/spark2/examples/jars/spark-examples_2.11-2.3.0.cloudera3.jar 100

