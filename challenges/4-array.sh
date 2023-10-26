#!/bin/bash

# Script:                     Login History  
# Author:                     Andrew Carroll  
# Date of latest revision:    10/25/2024  
# Purpose:                    Ops 201 Challenge 02

# create four directories
# mkdir dir1 dir2 dir3 dir4
for ((i=1; i<=4; i++)); do
  dirname="dir$i"
  mkdir "$dirname"
  dirs+=("$dirname")
done

# names into an array
# dirs=("dir1" "dir2" "dir3" "dir4")

# Loop through and create a new .txt in each dir
for ((i=0; i<${#dirs[0]}; i++)); do
  touch "${dirs[i]}/scriptfile.txt"
done
