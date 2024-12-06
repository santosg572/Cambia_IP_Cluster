#!/bin/bash

files=`cat hosts_nuevo.txt | tr -s " " | cut -d " " -f4`

for fil in ${files}
do
  echo "======================================="
  echo ${fil}
  sshpass -p 'carlos21' ssh santosg@${fil} "hostname; ip a"
done


