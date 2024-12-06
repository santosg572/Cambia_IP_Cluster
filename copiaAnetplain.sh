#!/bin/bash

nuevaIP=${1}
adaptador=${2}

nl=${#nuevaIP}

pati="/misc/tournoux2/santosg/linux_IP"

if [ $nl -gt "0" ]; then
  sed "s|MODIFICA|$nuevaIP|g" ${pati}/01-network-manager-all.yaml > ${pati}/tempo
#  sed "s|ADAPTADOR|$adaptador|g" /home/vagrant/Copiar_netplain/tempo >  /home/vagrant/Copiar_netplain/dd/01-network-manager-all.yaml2.${nuevaIP}
  sed "s|ADAPTADOR|$adaptador|g" ${pati}/tempo > ${pati}/dd/01-network-manager-all.yaml_${nuevaIP}
else
  echo "falta un argumento al scrip"
fi

