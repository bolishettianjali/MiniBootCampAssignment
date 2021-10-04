#!/bin/bash

        for ((i=1;i<=10;i++))
        do

                randomArray[i]=$((RANDOM%901 + 99))


        done

        echo Ten Random Numbers: ${randomArray[@]}


        firstGreatest=0
        firstSmallest=1000

        for randomNum in ${randomArray[@]}
        do

                if [ $randomNum -gt $firstGreatest ]
                then

                        firstGreatest=$randomNum

                fi

                if [ $randomNum -lt $firstSmallest ]
                then

                        firstSmallest=$randomNum

                fi
        done

        secondGreatest=$firstSmallest
        secondSmallest=$firstGreatest

        for randomNum in ${randomArray[@]}
        do

                if [ $randomNum -lt $firstGreatest ] && [ $randomNum -gt $secondGreatest ]
                then

                        secondGreatest=$randomNum

                fi

                if [ $randomNum -gt $firstSmallest ] && [ $randomNum -lt $secondSmallest ]
                then

                        secondSmallest=$randomNum

                fi

        done

        echo Second Greatest number: $secondGreatest
        echo Second Smallest number: $secondSmallest

