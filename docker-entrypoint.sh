#!/bin/bash
service ssh start

if [ ! -d "/home/hduser/hadoop-2.9.0/apps" ]; then
	bin/hdfs namenode -format
fi
sbin/start-dfs.sh
sbin/start-yarn.sh

bash

