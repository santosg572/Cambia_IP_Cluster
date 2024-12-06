#!/bin/bash

nuevaIP=${1}
adaptador=${2}
maquina=${3}

nl=$#
echo $nl

if [ $nl -gt "2" ]; then
  sed "s|MODIFICA|$nuevaIP|g" 01-network-manager-all.yaml > tempo.txt
  sed "s|ADAPTADOR|$adaptador|g" tempo.txt > ./dd/${maquina}_01-network-manager-all.yaml
else
  echo "falta un argumento al scrip"
fi

