#!/bin/bash
rm -rf sorts
mkdir sorts
./sorts.out
for file in sorts/*.csv
do
	./visualiser "$(basename "$file")"
done


