#!/bin/bash

sum=0
temp=0

for (( num=0; num<=100; num++ ))
do

	temp=$num
	rev=""
	flag="false"
	temp2=1

	while [ $num -gt 0 ]
	do

		sum=$(( $num % 10 ))

		num=$(( $num / 10 ))

		rev=$( echo ${rev}${sum} )

		if [ $temp2 -eq $sum ]
		then

			flag=true

		else
			flag=false
		fi

		temp2=$sum

		echo digit: $sum

	done

	if [ $flag == "true" ] && [ $temp -eq $rev ];
        then

		repeatedNum[num]=$temp

	fi

done

echo ${repeatedNum[@]}
echo Hai
