#!/bin/bash
num=2;
count=1;

while [ $count -lt 129 ]
do
	Table=$(($num * $count))
	echo $Table;
	count=`expr $count + 1`
done

