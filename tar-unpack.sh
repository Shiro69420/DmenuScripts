#!/bin/bash
lines='-l 20'
echo this wont work if you arent in the directory of the tar
file="$(ls | \
	dmenu -i -p "Give me the tar to unpack" \
	$lines | \
	awk '{print $1" "$4}')";

#if [[ ! -z $file]] then 
	tar -xzvf $file
