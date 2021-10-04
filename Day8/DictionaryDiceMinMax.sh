#! /bin/bash 

declare -A arr
arr[1]=0
arr[2]=0
arr[3]=0
arr[4]=0
arr[5]=0
arr[6]=0

flag=0
while [ $flag -le 10 ]
do

        random=$((1+RANDOM%6))

        arr[$random]=$(( ${arr[$random]}+1 ))

        for ((i=1;i<=6;i++))
        do

                if [ ${arr[$i]} == 10 ]
                then

                        flag=11

                fi
        done

done

arr[0]=0
j=0

for i in ${!arr[@]}
do

        if [ ${arr[$i]} -gt ${arr[$j]} ]
        then

                j=$i

        fi
done

arr[0]=11
k=0

for i in ${!arr[@]}
do

        if [ ${arr[$i]} -lt ${arr[$k]} ]
        then

                k=$i

        fi
done


echo maximum number: $j-${arr[$j]}
echo minimum number: $k-${arr[$k]}
#echo ${!arr[@]}
#echo ${arr[@]}
