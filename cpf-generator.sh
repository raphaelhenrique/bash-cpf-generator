#!/bin/bash

array[0]=$(($RANDOM % 10));
array[1]=$(($RANDOM % 10));
array[2]=$(($RANDOM % 10));
array[3]=$(($RANDOM % 10));
array[4]=$(($RANDOM % 10));
array[5]=$(($RANDOM % 10));
array[6]=$(($RANDOM % 10));
array[7]=$(($RANDOM % 10));
array[8]=$(($RANDOM % 10));

counter=0;
sum=0;

for i in {10..2}; do
	sum=$(($sum+${array[$counter]}*$i));
	counter=$(($counter+1))
done

remainder=$(($sum%11));

array[9]=0;

if [[ $remainder -ge 2 ]]; then
	array[9]=$((11-$remainder))
fi

counter=0;
sum=0;

for i in {11..2}; do
        sum=$(($sum+${array[$counter]}*$i));
        counter=$(($counter+1))
done

remainder=$(($sum%11));

dv2=0;

if [[ $remainder -ge 2 ]]; then
        dv2=$((11-$remainder))
fi

echo "CPF: ${array[0]}${array[1]}${array[2]}.${array[3]}${array[4]}${array[5]}.${array[6]}${array[7]}${array[8]}-${array[9]}${dv2}";
