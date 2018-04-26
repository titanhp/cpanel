#!/bin/bash
while [ 1 = 1 ]
do
   tong=$(/usr/sbin/exim -bpc)
   echo $tong
   if [ $tong -ge 10000 ]
   then
      #/usr/sbin/exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash
	   /usr/sbin/exim -bp | exiqgrep -i | xargs exim -Mrm
      #echo "Mail queue con lai:"
      #/usr/sbin/exim -bpc
   fi
sleep 30
done
