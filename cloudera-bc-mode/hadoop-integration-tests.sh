#!/bin/bash

#Prep
chmod +x ./run*.sh

#Kerberos basic testing
echo "-----------Testing if Kerberos ticket is present by running klist-----------"
klist

#HDFS Shell access Tests
echo "-----------Testing HDFS shell access-----------"
cat <<EOF > /tmp/wordcount.txt
a 1
b 2
c 3
d 4
e 5
f 6
g 7
h 8
i 9
j 10
EOF

hdfs dfs -put /tmp/wordcount.txt .
hdfs dfs -cat wordcount.txt 

### Spark Tests
echo "-----------Testing Spark connection by running spark scala python jobs-----------"
#Submit a scala spark job in client mode
./run-sample-spark-scala-clientmode.sh

#Submit a scala spark job in cluster mode
./run-sample-spark-scala-clustermode.sh

#Submit a python spark job in client mode
./run-sample-pyspark-job-clientmode.sh

#Submit a python spark job in cluster mode
./run-sample-pyspark-job-clustermode.sh

#List yarn applications using yarn command
yarn application -list -appStates FINISHED 