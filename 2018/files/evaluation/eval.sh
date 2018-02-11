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















# | python wnuteval.py

# conll_format()
# {
# 	conll_text=''
# 	tweet_id=''

# 	while IFS='' read -r line || [[ -n "$line" ]]
# 	do
# 		curr_tid=$(echo $line | cut -f1 -d' ')

# 		if [ -z "$curr_tid" ]; then continue; fi

# 		token=$(echo $line | cut -f5 -d' ')
# 		label=$(echo $line | cut -f6 -d' ')

# 		echo -e "$token\t$label" 

# 		if [ "$tweet_id" != "$curr_tid" ]
# 		then
# 			echo -e "\t"
# 			tweet_id=$curr_tid
# 		fi
# 	done < "$1"
# 	return $conll_text
# }

# preds=conll_format "$1"

# # preds=$( conll_format "$1" )
# # values=$( conll_format "$2" )

# # awk '{print $NF}' $preds \
# # | paste $values - \
# # | python wnuteval.py

# echo $preds


# exit 0