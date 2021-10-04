#!/bin/bash  -x

dice1=$((RANDOM%6+1))
dice2=$((RANDON%6+1))

add=`expr $dice1 + $dice2`;
echo "Addition of two dice is:$add ";

