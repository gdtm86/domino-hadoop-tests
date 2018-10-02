#!/bin/bash
spark2-submit --master yarn --deploy-mode client --num-executors 10 --executor-memory 4g --executor-cores 4 /opt/cloudera/parcels/SPARK2/lib/spark2/examples/src/main/python/pi.py 100
