#!/bin/bash 

temp=$(sensors | grep "^temp1" | awk '{print $2}' | tr -d "+" | head -n1) 


echo -e " $temp"
