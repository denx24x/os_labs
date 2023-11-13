#!/bin/bash
if [[ $2 -le $1 ]] && [[ $3 -le $1 ]]
then
	echo "$1"
elif [[ $1 -le $2 ]] && [[ $3 -le $2 ]]
then
	echo "$2"
else
	echo "$3"
fi
