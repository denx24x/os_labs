#!/bin/bash
while :
do
	echo "1) nano"
	echo "2) vi"
	echo "3) links"
	echo "4) exit"
	read input
	case $input in
		"1" )
			nano
			;;
		"2" )
			vi
			;;
		"3" )
			links
			;;
		"4" )
			break
			;;
		* )
			echo "unknown command"
			;;
	esac
done
