#! /bin/bash


	read -p "enter length in feet: " length
	read -p "enter width in feet: " width

	convert_LengthInFeet_To_Meter=$(echo $length | awk '{print $1/3.281}')

	convert_WidthInFeet_To_Meter=$(echo $width | awk '{print $1/3.281}')

	echo $convert_LengthInFeet_To_Meter,$convert_WidthInFeet_To_Meter | awk -F , '{print $1 * $2"m²"}' #Calculating area in feets to metersquare
