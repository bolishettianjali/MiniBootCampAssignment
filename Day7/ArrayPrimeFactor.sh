#!/bin/bash

	read -p "Enter a number: " number

	j=1

	for ((i=2;i<=$number;i++ ))

	do

	        while [ $((number%$i)) == 0 ]

	        do

	                array[j]=$i

			((j++))

	                number=$((number/$i))

	        done

	done

	echo ${array[@]}
