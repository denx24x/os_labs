#!/bin/bash
input="$1"
while read -r line
do
	group=$(echo "$line" | awk '{print $NF}')
	if [[ ${group:1:1} == "3" ]]
	then
		num=${group:2:1}
	else
		if [[ ${group:2:1} == "1" ]]
		then
			num="5"
		else
			num="6"
		fi
	fi
	echo "$line" | awk -v num=$num '$NF=num'
done < "$input"
