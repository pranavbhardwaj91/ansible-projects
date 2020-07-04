#!/bin/bash
# Description: This file starts and stops zookeper service
ZOOKEEPER_DIR={{ zookeeper_dir }}
a="start"
b="stop"
c="status"
d="restart"

if [ $1 == "$a" ]
	then
	$ZOOKEEPER_DIR/bin/zkServer.sh start
elif [ $1 == "$b" ]
	then
	$ZOOKEEPER_DIR/bin/zkServer.sh stop
elif [ $1 == "$c" ]
	then 
	$ZOOKEEPER_DIR/bin/zkServer.sh status
elif [ $1 == "$d" ]
	then
	$ZOOKEEPER_DIR/bin/zkServer.sh restart
else
	echo "Usage: zookeeper {start|stop|restart}" >&2
exit 3 
fi
