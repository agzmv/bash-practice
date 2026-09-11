#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Использование: $0 <папка>"
	exit 1
fi

if [ ! -d "$DIR" ]; then
	echo "Ошибка: папка $DIR не существует" >&2
	exit 1
fi

for file in "$DIR"/*.txt; do
	if [ -f "$file" ]; then
		cp "$file" "$file.bak"
		echo "Скопирован: $file -> $file.bak"
	fi
done >> backup.log

echo "Готово. Лог в backup.log"
