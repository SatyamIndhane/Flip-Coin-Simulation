#!/bin/bash -x

#Welcome to flip coin simulation problem

read -p "Enter the times to flip the coin:" n;


declare -A coin

for (( counter=1; counter<=n; counter++ ))
do
	var=$((RANDOM%8))
	if (( var == 0 ))
	then
		coin[$counter]="HHH"
	elif (( var == 1 ))
	then
		coin[$counter]="TTT"
	elif (( var == 2 ))
	then
		coin[$counter]="HTT"
	elif (( var == 3 ))
	then
		coin[$counter]="TTH"
	elif (( var == 4 ))
	then
		coin[$counter]="HHT"
	elif (( var == 5 ))
	then
		coin[$counter]="THH"
	elif (( var == 6 ))
	then
		coin[$counter]="HTH"
	elif (( var == 7 ))
	then
		coin[$counter]="THT"
	fi
done

echo ${!coin[@]} ${coin[@]}

hhh=0
ttt=0
htt=0
tth=0
hht=0
thh=0
hth=0
tht=0

for i in ${coin[@]}
do
	if [ "$i" == "HHH" ]
	then
		((hhh++))
	elif [ "$i" == "TTT" ]
	then
		((ttt++))
	elif [ "$i" == "HTT" ]
	then
		((htt++))
	elif [ "$i" == "TTH" ]
	then
		((tth++))
	elif [ "$i" == "HHT" ]
	then
		((hht++))
	elif [ "$i" == "THH" ]
	then
		((thh++))
	elif [ "$i" == "HTH" ]
	then
		((hth++))
	elif [ "$i" == "THT" ]
	then
		((tht++))
	fi
done

echo $hhh $ttt $htt $tth $hht $thh $hth $tht

Phhh=$(( (hhh*100)/n ))
Pttt=$(( (ttt*100)/n ))
Phtt=$(( (htt*100)/n ))
Ptth=$(( (tth*100)/n ))
Phht=$(( (hht*100)/n ))
Pthh=$(( (thh*100)/n ))
Phth=$(( (hth*100)/n ))
Ptht=$(( (tht*100)/n ))

echo Doublet Percentage of HHH is $Phhh
echo Doublet Percentage of TTT is $Pttt
echo Doublet Percentage of HTT is $Phtt
echo Doublet Percentage of TTH is $Ptth
echo Doublet Percentage of HHT is $Phht
echo Doublet Percentage of THH is $Pthh
echo Doublet Percentage of HTH is $Phth
echo Doublet Percentage of THT is $Ptht
