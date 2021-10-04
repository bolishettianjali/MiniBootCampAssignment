#! /bin/bash -x

	read -p "Enter values in Inches: " inch

	echo $inch | awk '{print $1 / 12"ft"}'
