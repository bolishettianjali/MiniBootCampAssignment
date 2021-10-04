#! /bin/bash

        for ((i=1;i<=10;i++))
        do

                randomArray[i]=$((RANDOM%901 + 99))


        done

        echo ${randomArray[@]}

	for((i=1; i<11; i++))
	do

                for((j=1; j<10; j++))
                do

                        if [ ${randomArray[j]} -gt ${randomArray[$((j+1))]} ]
                        then

                                temp=${randomArray[j]}

                                randomArray[$j]=${randomArray[$((j+1))]}

                                randomArray[$((j+1))]=$temp

			fi
                done
	done

        echo "Array in sorted order :"
        echo ${randomArray[@]}

        echo Second Largest: ${randomArray[9]}
        echo Second Smallest: ${randomArray[2]}
