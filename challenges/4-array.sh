#!/bin/bash

# create four directories
mkdir dir1 dir2 dir3 dir4

# names into an array
dirs=("dir1" "dir2" "dir3" "dir4")

# Loop through and create a new .txt in each dir
for ((i=0; i<${#dirs[0]}; i++)); do
  touch "${dirs[i]}/scriptfile.txt"
done