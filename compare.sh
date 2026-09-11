#!/bin/bash
if [ "$1" == "$2" ]; then
	echo "Строки одинаковые"
else
	echo "Строки разные"
fi

if [ "$1" -q "$2" ] 2>/dev/null; then
	echo "Числа равны"
fi

