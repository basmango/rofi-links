#!/bin/bash
selection="$(cat ~/rofi-links/links.tsv | awk -v var="$mycol_new" -F $'\t' 'BEGIN {OFS = FS} {$2 = var; print}' | rofi -dmenu -i -p "links" -no-custom)"
if [[ "$selection" != "" ]]; then
	line="$(grep -m 1 "$selection" ~/rofi-links/links.tsv)" #extracting the matching line from the .tsv file 
	url="$(echo $line | egrep -o 'https?://[^ ]+')"
	xdg-open $url 
	#url is the corresponding url for the selection, extracted using regex in the line above
fi
