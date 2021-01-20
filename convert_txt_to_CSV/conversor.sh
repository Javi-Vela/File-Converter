#!/bin/bash

#input absolute path
directory=$1
i=0

#read line by line
while read line; do
	#start array
	if [ "$line" != "EmailAddress,UserName,Password" ]; then
		email[i]=`echo $line | cut -d "," -f1`
		user[i]=`echo $line | cut -d "," -f2`
		password[i]=`echo $line |cut -d "," -f3`
		i=$[$i+1]	
	fi
done < $directory

#print array
for ((j=0; j<${#email[*]}; j++)); do 
	echo ${email[$j]}" : "${user[$j]}" : "${password[$j]}
done
