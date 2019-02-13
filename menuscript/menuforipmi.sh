#!/bin/bash
#IPMI tool#
#create by: JB - 02/12/2019#

SCRIPTDIR=/home/jbmaliwat/Documents/gitscripts/menuscript/bin
while true
do
clear; cat <<EOF

       ===================================
       $bold     Welcome to$off$bold$under IPMI TOOL$off$bold Menu  $off
       ===================================
       [1] SUPERMICRO
       [2] DELL
       [3] QUANTA
       [4] PXE boot
       [5] HUAWEI

       E .) Exit
EOF
echo
echo -n "       Enter Choice :  "
read choice
case $choice in

         1 ) clear
             echo
             echo -n " Are you sure you want to Login to SUPERMICRO server console via IPMI [y/n]: "
             read ANS
             case $ANS in
             Y|y) echo "Logging in to SUPERMICRO..."
             $SCRIPTDIR/supermicroipmi.sh
             read ;;
             *) ;;
             esac;;
         2 ) clear
             echo
             echo -n " Are you sure you want to Login to DELL server console via IPMI [y/n]: "
             read ANS
             case $ANS in
             Y|y) echo "Logging in to DELL..."
             $SCRIPTDIR/dellipmi.sh
             read ;;
             *) ;;
             esac;;
         3 ) clear
             echo
             echo -n " Are you sure you want to Login to QUANTA server console via IPMI [y/n]: "
             read ANS
             case $ANS in
             Y|y) echo "Logging in to QUANTA..."
             $SCRIPTDIR/quantaipmi.sh
             read ;;
             *) ;;
             esac;;
         4 ) clear
             echo
             echo -n " Are you sure you want to Login to PXE boot console via IPMI [y/n]: "
             read ANS
             case $ANS in
             Y|y) echo "Logging in to PXE boot..."
             $SCRIPTDIR/pxebootipmi.sh
             read ;;
             *) ;;
             esac;;
         5 ) clear
             echo
             echo -n " Are you sure you want to Login to HUAWEI server console via IPMI [y/n]: "
             read ANS
             case $ANS in
             Y|y) echo "Logging in to HUAWEI..."
             $SCRIPTDIR/huaweiipmi.sh
             read ;;
             *) ;;
             esac;;

        e|E) exit
             ;;
             *) printf "\nInvalid option, press any key to continue... "
             read dum;;
esac
done
