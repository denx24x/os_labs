#!/bin/bash
file="/var/log/anaconda/X.log"
awk '$3 == "(WW)" {$3 = "Warning"; print}' $file > full.log
awk '$3 == "(II)" {$3 = "Information"; print}' $file >> full.log
cat full.log
