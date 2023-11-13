#!/bin/bash
if [[ $PWD != $HOME ]]
then
	echo "Wrong directory!"
	exit 1
fi
echo $PWD
