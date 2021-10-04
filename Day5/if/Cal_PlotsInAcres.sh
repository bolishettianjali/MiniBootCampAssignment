#! /bin/bash

	read -p "enter length in feet: " length
	read -p "enter width in feet: " width
	read -p "enter number of plots: " totalPlots

	oneAcre_In_SquareFeet=43560 #ft²

	areaInSquarefeet=$(echo $length,$width,$totalPlots | awk -F , '{print ($1*$2)*$3}')

	areaInSquarefeet_To_acre=$(echo $areaInSquarefeet,$oneAcre_In_SquareFeet |awk -F , '{print $1/$2}')

	echo $areaInSquarefeet_To_acre
