#!/bin/bash
N=150000
cnt=0
P=$1
while read -r line; do
    val=$(($line * 2))
    echo "$val" >> "files/file$P.txt"
    cnt=$(($cnt + 1))
    if [[ $cnt == $N ]]
    then
        break
    fi
done < "files/file$P.txt"