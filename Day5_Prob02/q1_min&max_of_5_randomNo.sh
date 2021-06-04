#!/bin/bash

first=$((100 + RANDOM%809))
second=$((100 + RANDOM%809))
third=$((100 + RANDOM%809))
fourth=$((100 + RANDOM%809))
fifth=$((100 + RANDOM%809))

max=-1
min=-1

echo $'\n'Random Digits are: $first $second $third $fourth $fifth

if [ $first -ge $second ] && [ $first -ge $third ] && [ $first -ge $fourth ] && [ $first -ge $fifth ]; then
	max=$first
elif [ $first -le $second ] && [ $first -le $third ] && [ $first -le $fourth ] && [ $first -le $fifth ]; then
	min=$first
fi

if [ $second -ge $first ] && [ $second -ge $third ] && [ $second -ge $fourth ] && [ $second -ge $fifth ]; then
	max=$second
elif [ $second -le $first ] && [ $second -le $third ] && [ $second -le $fourth ] && [ $second -le $fifth ]; then
	min=$second
fi

if [ $third -ge $first ] && [ $third -ge $second ] && [ $third -ge $fourth ] && [ $third -ge $fifth ]; then
	max=$third
elif [ $third -le $first ] && [ $third -le $second ] && [ $third -le $fourth ] && [ $third -le $fifth ]; then
	min=$third
fi

if [ $fourth -ge $second ] && [ $fourth -ge $third ] && [ $fourth -ge $fifth ] && [ $fourth -ge $first ]; then
	max=$fourth
elif [ $fourth -le $second ] && [ $fourth -le $third ] && [ $fourth -le $fifth ] && [ $fourth -le $first ]; then
	min=$fourth
fi

if [ $fifth -ge $second ] && [ $fifth -ge $third ] && [ $fifth -ge $fourth ] && [ $fifth -ge $first ]; then
	max=$fifth
elif [ $fifth -le $second ] && [ $fifth -le $third ] && [ $fifth -le $fourth ] && [ $fifth -le $first ]; then
	min=$fifth
fi

echo $'\n'Maximum value: $max
echo $'\n'Minimum value: $min