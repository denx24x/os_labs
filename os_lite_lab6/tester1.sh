#!/bin/bash
TIMEFORMAT="%R"
for i in $(seq 1 1 20)
do
    for g in $(seq 1 1 10)
    do
        time ./test1.sh $i
    done 2> temp
    avg=$(paste -sd+ temp | sed 's/\,/./'g | bc -l)
    avg=$(echo "$avg/10" | bc -l)
    echo "$i $avg"
done 