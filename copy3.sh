#!/bin/bash

file="ridelim.txt"

dd=`cat ${file} | grep addres`

echo ${dd}


s1=${dd:0:7}
s2=${dd:8:20}

echo $s1
echo $s2

ssh santosg@${s2}


