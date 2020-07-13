#!/bin/bash

###discovery script. this will find HOST IP and then ping for other IPs on the network. send other IP's to a file. Other script will call ip.txt and run to allow for XSS. 


MYIP=$(hostname -I)
BEG=$(hostname -I | cut -d'.' -f1,2,3)

SUBNET="${BEG}."

rm ip.txt

for IP in {2..254}; do
BLAKE=$(ping -c 1 -W 1 $SUBNET$IP | grep "bytes from" | cut -d " " -f 4 | cut -d ":" -f 1)

   if [ "${BLAKE}" != "" -a "${BLAKE}" != ${MYIP} ];
        then echo $BLAKE > ip.txt
   fi

done
