#!/bin/sh

# Create directories from 1 to 10 without quotes
for i in $(seq 1 10); do
  mkdir "$i"
done

# Create files named name_date.txt-001 to name_date.txt-010 in each directory
for dir in $(find . -maxdepth 1 -type d); do
  for j in $(seq -f "%03g" 1 10); do
    touch "$dir/name_date.txt-$j"
  done
done

