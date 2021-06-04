#!/bin/bash 

read -p "Enter the range of array: " n 

flag=0
arr=()

echo Enter the integers:

for (( i = 0; i < n; i++ )); do
	read arr[i]
done

for (( i = 0; i < n-2; i++ )); do
	for (( j = i+1; j < n-1; j++ )); do
		for (( k = j+1; k < n; k++ )); do
			if [[ $((${arr[$i]} + ${arr[$j]} + ${arr[$k]})) -eq 0 ]]; then
				echo "${arr[$i]} + ${arr[$j]} + ${arr[$k]} = 0"
				flag=1
			fi
		done
	done
done

if [[ $flag -eq 0 ]]; then
	echo Triplets with Sum=0 does not exist 
fi