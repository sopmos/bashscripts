#!/bin/bash

# Dungeons and Dragons Dice Roller #
# Written by sopmos #


dia1='Rolling...'
dia2='You rolled a:'

echo
echo 'Welcome, traveller!'
echo 'Select which die to roll:'
echo

PS3='Roll:'
options=("d2" "d4" "d6" "d8" "d10" "d12" "d20" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"d2")
			echo
		   	echo $dia1
		   	sleep 1
		   	echo 
		   	echo $dia2
		   	BINR=$(( ( RANDOM % 2 )  + 0 ))
		   	if [ $BINR == 1 ]
		   	then
		   	echo HEADS
		   	echo
			fi
			if [ $BINR == 0 ]
		   	then
		   	echo TAILS
		   	echo
		   	fi
		   	;;
		"d4")
		   	echo 
		   	echo $dia1
		   	sleep 1
		   	echo 
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 4))
		   	echo
		   	;;
		"d6")
			echo
			echo $dia1
		   	sleep 1
		   	echo 
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 6))
		   	echo
		   	;;
	    	 "d8")
		   	echo
			echo $dia1
		   	sleep 1
		   	echo
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 8))
		   	;;
		"d10")
			echo
		   	echo $dia1
		   	sleep 1
		   	echo
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 10))
		   	echo
		   	;;
		"d12")
		   	echo
			echo $dia1
	   		sleep 1
		   	echo
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 12))
		   	echo
		   	;;
		"d20")
		   	echo
			echo $dia1
		   	sleep 1
		   	echo
		   	echo $dia2
		   	sleep 1
		   	echo $((1 + RANDOM % 20))
		   	echo
		   	;;
		"Quit")
			echo
			break
			;;
		*) 
			echo
		   	echo "INVALID OPTION"
		   	echo
			;;
	esac
done
