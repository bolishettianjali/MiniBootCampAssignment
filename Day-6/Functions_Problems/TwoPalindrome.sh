#!/bin/bash

echo "Enter a numbers";
read number;

function checkPalindrome() {
sum=0;
temp=0;
rem=""
temp=$number;
while(( $number > 0 ))
   do
	rem=$number%10
	sum=$(($sum*10+ $rem))
	number=$number/10

  done
 	if [ $temp -eq $sum ]
	then
	echo "Number is Palindrome: $sum";
	else
	echo "Number is not Palindrome";
	fi
}
checkPalindrome;

