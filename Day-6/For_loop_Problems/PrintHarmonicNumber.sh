#! /bin/bash -x

	read -p "Enter a value: " number

	harmonicNum=0

	for (( counter=1;counter<=$number;counter++))

	do

	harmonicNum=$(echo $counter | awk '{divd=1/$1} END {print harmonicNum+divd}')

	done

	echo $harmonicNum
