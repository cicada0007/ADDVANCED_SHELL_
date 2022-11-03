#!/bin/bash


echo "welcome sathwik Please select your starting class:
1-samuri
2-prisener
3-propet"

read class

case $class in 
	1)
		type="samuri"
		hp=10
		attack=20
		;;
	2)
		type="prisner"
                hp=5
		attack=8
		;;
	3)
		type="prophet"
		hp=7
		attack=77
		;;
esac

echo "you chosen the $type class. your hp is $hp ,your attack is $attack"

echo "YOU ARE DIED"


#1st beast

beast=$(( $RANDOM % 2))

echo "you are first beast approchs prepare for the battle (pick the no between (0-1)"

read number

if [[ $beast  == $number  ]]; then
	echo "you win"
else
	echo "beast wins"
	exit 1
fi

echo "boss battle get scared its the boss of all monsters 0-9"
read number
beast=$(($RANDOM % 10))
	
if [[ $beast == $number || $number="coffee" ]]; then
	echo "boss wins the game"
elif [[ $USER == "sath" ]]; then
	echo "sathwik always wins"
else
	echo "try again"
fi
