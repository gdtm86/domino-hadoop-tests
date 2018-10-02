#!/bin/bash
spark-submit --master yarn --deploy-mode cluster --num-executors 10 --executor-memory 4g --executor-cores 4 pi.py 100