#!/bin/bash

echo "Enter Day: ";
 read day;
echo "Enter month: ";
read month;

if [ $month = "march" ] && [ $day -ge 20 ] && [ $day -le 31 ]
then
        echo "TRUE"

elif [ $month = "april" ] && [ $day -le 30 ]
then
        echo "TRUE"

elif [ $month = "may" ] && [ $day -le 31 ]
then
        echo "TRUE"

elif [ $month = "june" ] && [ $day -le 20 ] && [ $day -le 30 ]
then
        echo "TRUE"
else
        echo "FALSE"
fi
