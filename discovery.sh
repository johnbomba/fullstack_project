#!/bin/bash

MYIP=$(hostname -I)
BEG=$(hostname -I | cut -d'.' -f1,2,3)

SUBNET="${BEG}."

#rm ip.py

for IP in {2..254};do
BLAKE=$(curl -s -I $SUBNET$IP | grep 200
    if [ "${BLAKE}" == "HTTP/1.1 200 OK" -a "${BLAKE}" != ${MYIP} ];
        then echo "ip='${BLAKE}'" > /home/corey/bin/ip.py
    fi
done

#BLAKE=$(ping -c 1 -w 1 $SUBNET$IP | grep "bytes from" | cut -d " " -f 4 | cut -d ":" -f 1)
#    if [ "${BLAKE}" != "" -a "${BLAKE} != ${MYIP} ];
#        then echo "ip='${BLAKE}'" > /home/corey/bin/ip.py
#    fi
#done
