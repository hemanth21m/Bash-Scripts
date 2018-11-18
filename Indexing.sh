#!/bin/bash
input=$1
array=(a b c d e f g h a w d r e q t y u d v h y e d h t d o)
length=${#array[*]}
for i in $(seq 0 $length);
do
 if [ $input = ${array[i]} ]; then
 indexing+=($i)
 fi
continue
done
echo "${indexing[@]}"
