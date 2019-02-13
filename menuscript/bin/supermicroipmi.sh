#!/bin/sh
#Login to SUPERMICRO server console via IPMI

IP="$1"

if [ -z "$IP" ] ; then
	echo "Please provide ipmi IP:"
	read IP
fi

echo "Connecting to $IP..."

ipmitool -I lanplus -H $IP -U ADMIN -P ADMIN sol activate 
