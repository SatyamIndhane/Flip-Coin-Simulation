#!/bin/bash -x

#Welcome to flip coin simulation problem

read -p "Enter the times to flip the coin:" n;


declare -A coin

for (( counter=1; counter<=n; counter++ ))
do
	var=$((RANDOM%2))
	if (( var == 1 ))
	then
		coin[$counter]="H"
	else
		coin[$counter]="T"
	fi
done

echo ${!coin[@]} ${coin[@]}

heads=0
tails=0

for i in ${coin[@]}
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

