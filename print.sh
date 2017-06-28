#!/bin/sh
# Function: Specify the specifications to print the standard output
# Author: jyliu

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ];then
	echo "Usage: $0 workers count datasize" && exit 1
fi

workers=$1
count=$2
let num=$count/$workers

size=$3

for i in `seq 1 $size`;do
	str=${str}A
done

printstr(){
	for i in `seq 1 $num`;do
		echo "$str"
	done
}

for w in `seq 1 $workers`;do
	printstr &
done
wait
