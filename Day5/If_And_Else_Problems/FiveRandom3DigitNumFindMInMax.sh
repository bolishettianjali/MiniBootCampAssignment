#! /bin/bash

	max=99
	min=1000

	for ((counter=1;counter<=5;counter++))

	do

	        randomNum=$((RANDOM%901 + 99))

		echo $randomNum

	        if [ $randomNum -gt $max ]

	        then

	                max=$randomNum

	        fi

	        if [ $randomNum -le $min ]

	        then

	                min=$randomNum

	        fi

	done

	echo max= $max
	echo min= $min
