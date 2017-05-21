#!/bin/bash
echo "Restart all service by Thanh LH"
echo "WAITING..."
process=( http mysql nginx php )
services=( mysql httpd nginx )
for i in "${process[@]}"
do
    echo Kill $i
    kill -9 $(ps aux | grep -e $i | awk '{ print $2 }')
done

for j in "${services[@]}"
do
    echo Start $j
    /etc/init.d/$j stop
    /etc/init.d/$j start
    /etc/init.d/$j status
done
