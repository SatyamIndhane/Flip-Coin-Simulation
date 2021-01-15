#!/bin/bash

#Welcome to flip coin simulation problem

read -p "Enter the times to flip the coin:" n;

#########SINGLET##########

declare -A coin1
declare -A singlet
declare -A library

for (( counter=1; counter<=n; counter++ ))
do
	var1=$((RANDOM%2))
	if (( var1 == 1 ))
	then
		coin1[$counter]="H"
	else
		coin1[$counter]="T"
	fi
done

echo ${!coin1[@]} ${coin1[@]}

heads=0
tails=0

for i in ${coin1[@]}
do
	if [ "$i" == "H" ]
	then
		((heads++))
	else
		((tails++))
	fi
done

echo $heads $tails

PH=$(( (heads*100)/n ))
PT=$(( (tails*100)/n ))

echo Singlet Percentage of heads is $PH
echo Singlet Percentage of tails is $PT

library[$PH]="H"
library[$PT]="T"

singlet[0]="$PH"
singlet[1]="$PT"
number1=1
length1=${#singlet[@]}

while (( number1<=length1 ))
do
	for (( base=0; base<length1-1; base++ ))
	do
		if (( singlet[$((base))]>singlet[$((base+1))] ))
		then
			tmp1=$((singlet[$base]))
			singlet[$(($base))]=$((singlet[$((base+1))]))
			singlet[$((base+1))]=$tmp1
		fi
	done
	((number1++))
done

echo ${singlet[@]}

for i in ${!library[@]}
do
	if (( $i == ${singlet[1]} ))
	then
		echo Winning Combination is ${library[$((i))]}
	fi
done


