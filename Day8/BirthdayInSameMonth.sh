#! /bin/bash

declare -A ninety3
ninety3[1]=0
ninety3[2]=0
ninety3[3]=0
ninety3[4]=0
ninety3[5]=0
ninety3[6]=0

declare -A ninety2
ninety2[7]=0
ninety2[8]=0
ninety2[9]=0
ninety2[10]=0
ninety2[11]=0
ninety2[12]=0

for((i=1;i<=50;i++))
do

        random=$((1+RANDOM%12))

        if [ $random -le 6 ]
        then

                ninety3[$random]=$(( ${ninety3[$random]}+1 ))
        else

                ninety2[$random]=$(( ${ninety2[$random]}+1 ))
        fi
done
for((i=1;i<=6;i++))
do
        if [ ${ninety3[$i]} -ne 0 ]
	then
		echo Number of Individual  having birthdays in $i-93: ${ninety3[$i]}
	fi
done

for((i=7;i<=12;i++))
do
        if [ ${ninety2[$i]} -ne 0 ]
        then
                echo Number of Individuals having birthdays in $i-92: ${ninety2[$i]}

        fi
done


