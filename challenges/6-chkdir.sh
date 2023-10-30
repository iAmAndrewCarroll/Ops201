#!/bin/bash

# Script:                     Login History  
# Author:                     Andrew Carroll  
# Date of latest revision:    10/25/2024  
# Purpose:                    Ops 201 Challenge 06

# define array and dir names
dirs=("dir1" "dir2" "dir3" "dir4")

# does the directory exist?
dir_in_array() {
  local dir_check="$1"
  for dir in "${dirs[@]}"; do
    if [ "$dir" = "$dir_check" ]; then
      return 0 # boolean true; dir is in array
    fi
  done
  return 1 # boolean false; dir is not in array
}

get_name() {
  # view directory
  read -p "Want to view array? (y/n): " view
  if [ "$view" == "y" ] || [ "$view" == "yes" ]; then
    echo "Array: "
    echo "${dirs[@]}"
  fi

  # loop to ask for user input
  while true; do
    read -p "Enter a directory name (type 'done' to finish): " dir_name

    # does user want to exit
    if [ "$dir_name" == "done" ]; then
      break
    fi

    # does the directory exist?
    if dir_in_array "$dir_name"; then 
      echo "'$dir-name' already exists."
    else
      # does user want to create the directory?
      read -p "'$dir_name' not in list.  Do you want to add it? (yes/no): " add_dir

      if [ "$add_dir" == "y" ] || [ "$add_dir" == "yes" ]; then
        # add to array
        dirs+=("$dir_name")
        echo "Added '$dir_name' to array."

        # create dir
        mkdir "$dir_name"
        echo "'$dir_name' created."
      else
        echo "'$dir_name' not added."
      fi
    fi
  done
}

get_name

# do you want to delete a dir?
while true; do
  read -p "Do you want to remove a directory? (y/n): " rm_dir

  if [ "$rm_dir" == "y" ] || [ "$rm_dir" == "yes" ]; then
    read -p "Dir to be be removed: " dir_rm
    if dir_in_array "$dir_rm"; then
      # remove from array
      dirs=("${dirs[@]/$dir_rm}")
      rm -r "$dir_rm"
      echo "'$dir_rm' removed."
    else
      echo "'$dir_rm' not in array."
    fi
  else
    break
  fi
done

# print array
read -p "Want to view your completed array? (yes/no): " show_array
if [ "$show_array" == "y" ] || [ "$show_array" == "yes" ]; then
  echo "Here is your completed array: "
  echo "${dirs[@]}"
  read -p "Press Enter to exit."
else 
  echo "Ok, goodbye."
fi