#!/bin/bash

cat $2 | awk '{print $NF}' | paste $1 - > temporal

conll_format(){
	tweetid=''

	while IFS='' read -r line || [[ -n "$line" ]]
	do
		current=$( echo $line | cut -f1 -d' ' )

		if [ -z "$current" ]; then continue; fi

		token=$(echo $line | cut -f5 -d' ')
		label=$(echo $line | cut -f6 -d' ')
		preds=$(echo $line | cut -f7 -d' ')

		if [ "$tweetid" != "$current" ]
		then
		    if [ -n "$tweetid" ]; then echo -e "\t"; fi
			tweetid=$current
		fi

		echo -e "$token\t$label\t$preds" 

	done < "$1"
}

conll_format temporal | python wnuteval.py

rm temporal

exit 0