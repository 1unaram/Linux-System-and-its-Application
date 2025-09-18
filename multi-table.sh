#!/bin/sh

if [ -z $1 ] || [ -z $2 ];then
	echo "Invalid input"
	exit 1
fi

if [ $1 -le 0 ] || [ $2 -le 0 ];then
	echo "Input must be greater then 0"
	exit 1
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		result=`expr $i \* $j`
		echo -n $i"*"$j"="$result"\t"
	done
	echo ""
done
exit 0
