#!/bin/bash
if [ $# -lt 1 ] 
then
	echo "Usage: $0 <server_ip>"
	exit
fi

exec 2> /tmp/OXE
for x in {1..200}
do
    time wget "$1" &
    rm index*
done
