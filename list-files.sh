#!/bin/bash

DIR="$1"

for file in "$DIR"/*; do
	if [ -f "$file" ]; then
		echo "$file"
	fi
done


