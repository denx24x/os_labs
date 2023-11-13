#!/bin/bash
answer=""
while [[ $a != "q" ]]
do
	answer=$answer$a
	read a
done
echo $answer
