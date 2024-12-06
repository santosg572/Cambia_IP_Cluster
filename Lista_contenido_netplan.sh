#!/bin/bash

#files=`cat hosts_nuevo.txt | tr -s " " | cut -d " " -f4`
files=`cat fmrilab_hosts_nuevas.dat`

IFS=$'\n'
uno=1
dos=2
cero=0

for line in ${files}
do
#  echo $line
  nl=${#line}
#  echo $nl
  if [ $nl -gt $cero ]; then
#    echo "linea: "${line}
    ss=${line:0:1}
#    echo $ss
    if [ "$ss" = "$uno" ]; then
     echo "================================================"
     echo "linea: "${line}
     c4=`echo $line | tr -s " " | cut -d " " -f4`
     echo "ip para entrar "$c4
     ssh santosg@${c4} "hostname; ls /etc/netplan"
    fi
  fi
done 

