#!/bin/bash
let answer=0
for file in $(find /var/log/ -type f -name "*.log")
do
	answer=$(( $answer + $(wc -l < $file) ))
done
echo $answer
