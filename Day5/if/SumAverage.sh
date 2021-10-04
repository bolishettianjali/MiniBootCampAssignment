#!/bin/bash -x

sum=`expr $((RANDOM%90+10)) + $((RANDOM%90+10)) + $((RANDOM%90+10)) + $((RANDOM%90+10)) + $((RANDOM%90+10))`

avg=$(($sum/5));

echo "sum of five Digits: $sum";
echo "avg of five Digits: $avg";
