#!/bin/sh
#Manually set PXE boot on Supermicro server   

IP="$1"

if [ -z "$IP" ] ; then
	echo "Please provide ipmi IP:"
	read IP
fi

echo "Connecting to $IP..."

ipmitool -I lanplus -H $IP -U ADMIN -P ADMIN chassis bootdev pxe

&&

ipmitool -I lanplus -H $IP -U ADMIN -P ADMIN power reset 

