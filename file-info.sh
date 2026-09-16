#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

if [ -f "$1" ]; then
	echo "File: $1"
	echo "Size: "
	stat "$1" | grep "Size"
fi
