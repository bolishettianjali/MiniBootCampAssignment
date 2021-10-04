#! /bin/bash

	read -p "Enter a value: " power

	for (( counter=0;counter<=$power;counter++))

	do

	echo "2^$counter": $((2**$counter))

	done
