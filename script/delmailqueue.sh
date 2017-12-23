#!/bin/bash
echo "Tong so mail queue:"
/usr/sbin/exim -bpc
sleep 1
echo "Neu muon xoa mail queue, them tham so del"
echo "./tenfile.sh del"

if [ ! -z "$1"  ] && [ $1 = "del" ]
then
   /usr/sbin/exim -bp | awk '/^ *[0-9]+[mhd]/{print "exim -Mrm " $3}' | bash
   echo "Mail queue con lai:"
   /usr/sbin/exim -bpc
fi
