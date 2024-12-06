#!/bin/bash

IFS=$'\n'

files=`cat hosts_nuevo.txt`

#files=`cat hosts_nuevo.txt | tr -s " " | cut -d " " -f4`

for fil in ${files}
do
  echo "======================================="
  ipN=`echo $fil | tr -s " " | cut -d " " -f1`
  maquina=`echo $fil | tr -s " " | cut -d " " -f3`
  ipO=`echo $fil | tr -s " " | cut -d " " -f4`
  adaptador=`echo $fil | tr -s " " | cut -d " " -f5`
  echo "ipN: "${ipN}
  echo "maquina: "${maquina}
  echo "ipO: "${ipO}
  echo "adaptador: "${adaptador}
  ./crea_01_new.sh ${ipN} ${adaptador} ${maquina}
  ./crea_01_old.sh ${ipO} ${adaptador} ${maquina}
done


