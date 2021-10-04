#! /bin/bash

	function checkPrimeIsPalindrome() {

	        num=$1

	        s=0

	        rev=""

	        temp=$num

	        while [ $num -gt 0 ]
	        do

	                s=$(( $num % 10 ))

	                num=$(( $num / 10 ))

	                rev=$( echo ${rev}${s} )
        	done

	        if [ $temp -eq $rev ];
        	then

		        isPalindromePrime="$( checkPrime $rev )"

			echo $temp is palindrome, and palindrome number $isPalindromePrime

	        else

			isPalindromePrime="$( checkPrime $rev )"

			echo $temp is NOT palindrome, and palindrome number: $isPalindromePrime
	        fi

	}

	function checkPrime(){

	        num=$1

	        for((i=2; i<=num/2; i++))

	        do

	                if [ $((num%i)) -eq 0 ]

	                then

	                        echo "$num is not a prime number."

	                        exit

	                 fi

	        done

		        echo "$num is a prime number."

	}


	read -p "Enter a number: " number

	numberIsPrime="$( checkPrime $number )"

	echo $numberIsPrime

	PalindromeIsPrime="$( checkPrimeIsPalindrome $number )"

	echo $PalindromeIsPrime
