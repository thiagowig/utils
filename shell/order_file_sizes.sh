#!/bin/bash

where=$1

cd $where

files=$(du)

while read -r line ; do
  line_array=($line)
  file_size=${line_array[0]}

  echo $file_size
done < <(du)
