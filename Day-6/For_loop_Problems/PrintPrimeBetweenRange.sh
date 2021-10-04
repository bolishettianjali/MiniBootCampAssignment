#!/bin/bash

	read -p "Enter first number : " from_number
	read -p "Enter second number : " to_number

	for (( number=$from_number; number<=$to_number; number++ ))

	do

	        flag=0

	        for (( i=2;$i <= $(($number / 2));i++ ))

	        do

	                if [ $((number % $i)) -eq 0 ]

	                then

	                        flag=1

	                fi
	        done

	        if test $flag -eq 0

	        then

	        echo $number

	        fi

	done
