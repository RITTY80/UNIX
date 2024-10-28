#!/bin/bash

for i in "$@"; do
  if [ -d "$i" ]; then
    echo "Largest filename size in directory $i is:"
    largest_file_size=$(ls -Rl "$i" | grep "^-" | tr -s ' ' | cut -d' ' -f 5 | sort -n | tail -1)
    echo "$largest_file_size"
  else
    echo "$i is not a directory"
  fi
done

