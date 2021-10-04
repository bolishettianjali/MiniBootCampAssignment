#!/bin/bash

	read -p "Enter a number: " number;

	if (($number>=1 & $number<10))
	then

		echo "Unit";

	elif (($number>=10 & $number<100))
	then

		echo "Tens";

	elif (($number>=100 & $number<1000))
	then

		echo "Hundred";


        elif (($number>=1000 & $number<10000))
	then

		echo "Thousand"


        elif (($number>=10000 & $number<100000))
	then
		echo "Ten Thousand"


        elif (($number>=100000 & $number<1000000))
	then

		echo "Lakh"


	else

		echo "None of the above";

	fi
