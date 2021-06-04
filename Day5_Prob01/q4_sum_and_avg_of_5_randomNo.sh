#!/bin/bash 

range=90
sum=0
avg=0
for (( i = 0; i < 5; i++ )); do

	# gives a random 2-digit number
	result=$((10+RANDOM%89))

	arr[i]=$result
	sum=$((sum+arr[i]))
done

echo "5 2-digit randum Numbers are: ${arr[@]}"
echo "Sum: $sum"
echo "Average: $(($sum/5))"