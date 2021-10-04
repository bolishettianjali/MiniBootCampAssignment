#! /bin/bash

        read -p "Enter numbers:  " num

        m=1

        for numb in $num
        do

                arr[m]=$numb

                ((m++))
        done

        size=${#arr[@]}

        found=false;

        for ((i=1; i<=$size-2; i++))
        do

                for ((j=i+1; j<=$size-1; j++))
                do

                        for ((k=j+1; k<=$size; k++))
                        do

                                if [ $((${arr[i]}+${arr[j]}+${arr[k]})) -eq 0 ]
                                then

                                        echo ${arr[i]} ${arr[j]} ${arr[k]}

                                        found=true;

                                fi
                        done
                done
        done

        if [ $found == false ]
        then

                 echo not exist

        fi
