#! /bin/bash

	function celciusToFarenheit(){

	        local value=$1
        	local convert=$(echo $value | awk '{print (($1*9/5)+32)}')
        	echo $convert
	}

	function farenheitTOcelcius(){

	        local value=$1
	        local convert=$(echo $value | awk '{print (($1-32)*(5/9))}')
	        echo $convert
	}


	echo Press 'c' to convert celcius to Farenheit:
	echo Press 'f' to convert Farenheit to celcius:

	read choice

	case $choice in

	c )     read -p "Enter a value in Celcius: " value

		echo "Converting Celcius to Farenheit"

	        farenheit="$( celciusToFarenheit $value )"

	        echo $farenheit°F

	        ;;

	f)      read -p "Enter a value in Farenheit: " value

		 echo "Converting Farenheit to Celcius"

		celcius="$( farenheitTOcelcius $value )"

		echo $celcius°C

		;;

	* )     echo select from specified characters 'c' or 'f' 
		;;

	esac
