#!/bin/bash
FILES=./*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  xxd -u $f | grep -B 1 -A 1 ELF
done
