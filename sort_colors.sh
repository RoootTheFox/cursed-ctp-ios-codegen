#!/bin/bash

# get all colors
color_list=$(.theos/obj/debug/uicolorutil | grep -v "(null)")

declare -A colors

# put colors
while IFS= read -r col; do
	name=${col%% *}
	name=${name//#/}
	value=${col##* }
	value=${value//#/}
	value="${value,,}" # lowercase !!
	#echo "$name => $value hi: ${colors[$value]}"
	if [[ -v colors[$value] ]]; then
		# color known, add it to the value
		colors[$value]="${colors[$value]} $name"
	else
		# color unknown, add it to the map
		colors[$value]="$name"
	fi
done <<< "$color_list"

for hex in "${!colors[@]}"; do
	printf "%s=%s\n" "$hex" "${colors[$hex]}"
done
