#!/bin/bash 

a=10;
b=2;
c=66;

sum1=$(($a + $b * $c));

sum2=$(($c + $a / $b));

sum3=$(($a % $b + $c));

sum4=$(($a * $b + $c));

	echo "$sum1";
	echo "$sum2";
	echo "$sum3";
	echo "$sum4";

if [ $sum1 -ge $sum2 ] && [ $sum1 -ge $sum3 ] && [ $sum1 -ge $sum4 ]
then
	echo "Greater Number: $sum1";
elif [ $sum2 -ge $sum1 ] && [ $sum2 -ge $sum3 ] && [ $sum2 -ge $sum4 ]
then
	echo "Greater Number: $sum2";
elif [ $sum3 -ge $sum1 ] && [ $sum3 -ge $sum2 ] && [ $sum3 -ge $sum4 ]
then
	echo "Greater Number: $sum3";
else
	echo "Greater Number: $sum4";
fi
if [ $sum1 -le $sum2 ] && [ $sum1 -le $sum3 ] && [ $sum1 -le $sum4 ]
then
	echo "Smaller Number: $sum1";
elif [ $sum2 -le $sum1 ] && [ $sum2 -le $sum3 ] && [ $sum2 -le $sum4 ]
then
	echo "Smallest Number: $sum2";
elif [ $sum3 -le $sum1 ] && [ $sum3 -le $sum2 ] && [ $sum3 -le $sum4 ]
then
	echo "Smallest Number: $sum3";
else
	echo "Smallest Number: $sum4";
fi
