#! /bin/bin -x

	read -p "Enter a value: " num

	feetToInch=$(echo $num | awk '{print $1*12 }')

	InchToFeet=$(echo $num | awk '{print $1/12}')

	FeetToMeter=$(echo $num | awk '{print $1/3.281}')

	MeterToFeet=$(echo $num | awk '{print $1*3.281}')

	echo feetToInch: $feetToInch
	echo InchToFeet: $InchToFeet
	echo FeetToMeter: $FeetToMeter
	echo MeterToFeet: $MeterToFeet
