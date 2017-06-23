#!/bin/bash
while [ 1=1 ];do
    CPU_LOAD=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
    CPU_THRESHOLD=680
	echo $CPU_LOAD
	if [ $CPU_LOAD -gt $CPU_THRESHOLD ] ; then
		echo OverLoad
		kill -9 $(ps aux | grep -ie php | awk '{ print $2 }')
	fi
    sleep 5
done
