#!/bin/bash -x

	read -p " Enter a number below 1000000:-" num

	case $num in

	1) echo unit ;;

	10) echo Ten ;;

	100) echo hundred;;

	1000) echo thousand;;

	10000) echo tenthousand;;

	100000) echo lakh;;

	1000000) echo tenlakh;;

	*) echo "Invalid Input";;

	esac
