#!/bin/bash
grep -Eahor "[0-9a-zA-Z._-]+@[0-9a-zA-Z.-]+\.[a-zA-Z]+" /etc | paste -sd "," - > emails.lst
cat emails.lst

