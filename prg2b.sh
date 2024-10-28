#!/bin/bash

if [ $# -eq 0 ]; then
  echo "display does not exist"
else
  ls -l "$1" > t2
  x=$(awk '{print $1, $6, $7, $8, $9}' t2)
  echo "$x"
fi

