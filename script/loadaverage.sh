#!/bin/bash
while [ 1=1 ];do
      CPU_LOAD=$(uptime | cut -d"," -f4 | cut -d":" -f2 | cut -d" " -f2 | sed -e "s/\.//g")
      CPU_THRESHOLD=700
      echo CPU_LOAD
      sleep 5
done
