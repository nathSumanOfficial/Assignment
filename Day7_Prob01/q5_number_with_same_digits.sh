#!/bin/bash

arr=()

printf "\nRequired Numbers between 0-100 are: "

for (( i = 0; i <= 100; i++ )); do
	
	if [[ $i -eq 0 ]]; then
		continue
	fi

	if [[ $(( $i%11 )) -eq 0 ]]; then
		printf $i" "
	fi

done

echo