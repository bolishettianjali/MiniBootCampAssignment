#! /bin/bash

	function check() {

		num=$1

		sum=0

		rev=""

		temp=$num

		while [ $num -gt 0 ]
		do

		        sum=$(( $num % 10 ))

		        num=$(( $num / 10 ))

		        rev=$( echo ${rev}${sum} )

		done

		if [ $temp -eq $rev ];
		then

			echo "$temp is palindrome"

		else

			echo "$temp is NOT palindrome"

		fi

	}

	read -p "enter first number: " num1
	read -p "enter second number: " num2

	check $num1
	check $num2
