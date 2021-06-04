#!/bin/bash

arr=()

for (( i = 0; i < 10; i++ )); do
	arr[i]=$((100+RANDOM%809))
done

echo $'\n'Array Contains: ${arr[@]}

readarray -t arrSorted < <(printf '%d\n' "${arr[@]}" | sort)

echo Second Largest Number: ${arrSorted[1]}
echo Second Smalest Number: ${arrSorted[8]}
