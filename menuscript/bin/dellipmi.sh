#!/bin/sh
#Login to DELL server console via IPMI

IP="$1"

if [ -z "$IP" ] ; then
	echo "Please provide ipmi IP:"
	read IP
fi

echo "Connecting to $IP..."

ipmitool -I lanplus -H $IP -U root -P calvin sol activate 
