#! /bin/bash

	number=$((RANDOM%100+1))
	guess=200

	echo COMPUTER GUESSED ONE NUMBER RANDOMLY FROM 1-100,
	echo GUESS NUMBER BETWEEN 1 - 100

	while [ $guess -ne $number ]

	do

	read  -p "guess the number : "  num

	guess=$num

	        if [ $guess -gt $number ]

	        then

	                echo It is high, try low

	        elif [ $guess -lt $number ]

	        then

	                echo it is low, try high

	        else

	                echo your guess is right $number

	        fi

	done
