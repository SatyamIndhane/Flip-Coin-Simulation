#!/bin/bash -x

#Welcome to flip coin simulation problem

var=$((RANDOM%2))

if (( var == 1 ))
then
	echo Heads
else
	echo Tails
fi
