#!/bin/bash
sort -t ":" -n -k 3 /etc/passwd | awk -F ":" '{print $1, $3}'
