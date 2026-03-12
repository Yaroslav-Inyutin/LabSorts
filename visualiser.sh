#!/bin/bash
rm -rf sorts
mkdir sorts
./sorts.out

images=()
for image in images/*.jpg; do
	images+=("$(basename "$image")")
done

files=()
for file in sorts/*.csv; do
	files+=("$(basename "$file")")
done

j=0
for i in "${!files[@]}"; do
	./visualiser "${files[$i]}" "${images[$j]}"
	((j++))
	if [ $j -eq ${#images[@]} ]; then
		j=0
	fi
done
