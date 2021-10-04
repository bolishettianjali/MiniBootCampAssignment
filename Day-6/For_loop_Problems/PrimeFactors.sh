
#!/bin/bash

	read -p "Enter a number: " number

	for ((i=2;i<=$number;i++ ))

	do

	        while [ $((number%$i)) == 0 ]

	        do

	                echo $i

	                number=$((number/$i))

	        done

	done
