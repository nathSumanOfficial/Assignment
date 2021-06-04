#!/bin/bash 
dice1=$((1+RANDOM%6))
dice2=$((1+RANDOM%6))
echo "Sum of 2 Dice Numbers = $(($dice1+$dice2))" 