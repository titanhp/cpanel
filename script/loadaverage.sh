#!/bin/bash
while [ 1=1 ];do
      CPU_LOAD=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
      CPU_THRESHOLD=700

      if [ $CPU_LOAD -gt $CPU_THRESHOLD ] ; then
        kill -9 $(ps -eo pid | sort -k 1 -r | grep -v PID | head -n 1)
      fi
      sleep 5
done
