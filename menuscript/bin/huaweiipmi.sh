#!/bin/sh
#Login to HUAWEI (arm) server console via IPMI

IP="$1"

if [ -z "$IP" ] ; then
	echo "Please provide ipmi IP:"
	read IP
fi

echo "Connecting to $IP..."

ipmitool -I lanplus -H $IP -U root -P Huawei12#$ sol activate 

