#!/bin/bash
# IP sweeper written in Bash. Taken from TheCyberMentor's Practical Ethical Hacking course:
# https://academy.tcm-sec.com/

if [ "$1" == "" ]
then
	echo "Please enter the first three IP octets as first argument!"
	echo "Syntax: ./ipsweeper.sh x.x.x"
else
	for ip in `seq 1 254`; do
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
