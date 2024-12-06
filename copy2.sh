#!/bin/bash

dir=`cat ip.dat`

uno="1"

for fil in ${dir}
do
 firstchar=$(expr substr $fil 1 1);
 if [ "$firstchar" != "$uno" ]; then
   file=${fil}".txt";
   mv ${file} ./etc/network/interfaces
 fi
done

#ssh santosgmmv ${1} ./etc/network/interfaces
