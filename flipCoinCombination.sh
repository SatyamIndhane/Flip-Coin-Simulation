#!/bin/bash -x

#Welcome to flip coin simulation problem

read -p "Enter the times to flip the coin:" n;


declare -A coin

for (( counter=1; counter<=n; counter++ ))
do
	var=$((RANDOM%4))
	if (( var == 0 ))
	then
		coin[$counter]="HH"
	elif (( var == 1 ))
	then
		coin[$counter]="TT"
	elif (( var == 2 ))
	then
		coin[$counter]="HT"
	else
		coin[$counter]="TT"
	fi
done

echo ${!coin[@]} ${coin[@]}

hh=0
tt=0
ht=0
th=0

for i in ${coin[@]}
do
	if [ "$i" == "HH" ]
	then
		((hh++))
	elif [ "$i" == "TT" ]
	then
		((tt++))
	elif [ "$i" == "ht" ]
	then
		((ht++))
	else
		((th++))
	fi
done

echo $hh $tt $ht $th

Phh=$(( (hh*100)/n ))
Ptt=$(( (tt*100)/n ))
Pht=$(( (ht*100)/n ))
Pth=$(( (th*100)/n ))

echo Doublet Percentage of HH is $Phh
echo Doublet Percentage of TT is $Ptt
echo Doublet Percentage of HT is $Pht
echo Doublet Percentage of TH is $Pth
