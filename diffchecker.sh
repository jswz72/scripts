#!/bin/sh

#Check if any changed files

diff=`git diff`
array=()

while read -r line; do
	if [[ $line == \+* ]] #string starts with + 
		then
		if [[ $line == *"console.log"* ]] || [[ $line == *"debugger"* ]] || [[ $line == *"asdf"* ]]
			then 
			array+=($line)
		fi
	fi
done <<< "$diff"

if [ ${#array[@]} -eq 0 ]
	then
	echo "LOOKS GOOD!"
else
	echo "FAIL"
	echo "Offenders:"
	printf '%s\n' "${array[@]}"
fi
