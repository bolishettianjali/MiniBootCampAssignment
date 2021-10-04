#! /bin/bash

	gambler=100
	she=100
	gamblerwon=0
	shewon=0
	noofbetmade=0

	while [ $gambler -gt 0 ] && [ $she -gt 0 ]
	do

	((noofbetmade++))

	coinflip=$((RANDOM%2))

		if [ $coinflip -eq 1 ]
		then

			gambler=$(($gambler+1))
			she=$(($she - 1))
			((gamblerwon++))
		else

		        she=$(($she+1))
        		gambler=$(($gambler-1))
		        ((shewon++))
		fi

	done

	if [ $gambler -gt $she ]
	then

	        echo gambler won $gamblerwon times

		echo amount won is $gambler

		echo She has no more money to gamble: $she rs

	else

	        echo she won $shewon times

		 echo amount won is $she

		 echo Gambler has no more money to gamble: $gambler rs

	fi

	echo no.of bets done were $noofbetmade
