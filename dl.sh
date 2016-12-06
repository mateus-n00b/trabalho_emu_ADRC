#!/bin/bash
if [ $# -lt 1 ] 
then
	echo "Usage: $0 <server_ip>"
	exit
fi

exec 2> /tmp/logs.txt
sleep 2
for x in {1..100}
do
    time wget "$1"
    rm index*
    sleep 0.1
done
