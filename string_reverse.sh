#!/bin/bash
read -p "Enter string: " str
echo -n $str | wc -c
# len=${#str}
reversed=""
for((i=$len-1;i>=0;i--))
do
reversed=$reversed${str:$i:1}
done
echo $reversed