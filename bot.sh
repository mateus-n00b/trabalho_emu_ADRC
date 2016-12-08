#!/bin/bash
if [ $# -lt 1 ]
then
	echo "Usage: $0 <server_ip>"
	exit
fi

exec > /dev/null 2> /tmp/botl0g
for x in {1..500}
do
    wget "$1" &
    # rm index*
		sleep 0.1
done
