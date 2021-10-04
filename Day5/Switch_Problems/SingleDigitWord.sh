#!/bin/bash 

read -p "Enter a number between 0 to 9: " number;

case $number in
	0) echo "ZERO";
	;;
	1) echo "ONE";
	;;
	2) echo "Two";
	;;
	3) echo "Three";
	;;
	4) echo "Four";
	;;
	5) echo "Five";
	;;
	6) echo "Six";
	;;
	7) echo "Seven";
	;;
	8) echo "Eight";
	;;
	9) echo "Nine";
	;;
	*) echo "In valid Input"
	esac
