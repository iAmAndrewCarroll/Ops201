#!/bin/bash

# Script:                     Login History  
# Author:                     Andrew Carroll  
# Date of latest revision:    10/31/2024  
# Purpose:                    Ops 201 Challenge 07

# Check for root permissions
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Function to extract information using lshw and grep
function get_info() {
  local component=$1
  local keys=("${!2}")
  echo "=== $component ==="
  for key in "${keys[@]}"; do
    lshw -c $component | grep -E "^\s*$key" 
  done
  echo ""
}

# Main code starts here

# Define the keys for each component
declare -a cpu_keys=("product:" "vendor:" "physical id:" "bus info:" "width:")
declare -a ram_keys=("description:" "physical id:" "size:")
declare -a display_keys=("description:" "product:" "vendor:" "physical id:" "bus info:" "width:" "clock:" "capabilities:" "configuration:" "resources:")
declare -a network_keys=("description:" "product:" "vendor:" "physical id:" "bus info:" "logical name:" "version:" "serial:" "size:" "capacity:" "width:" "clock:" "capabilities:" "configuration:" "resources:")

# Retrieve and display system information
echo "Computer name: $(hostname)"
echo ""

# Get information for each component
get_info "cpu" "cpu_keys[@]"
get_info "memory" "ram_keys[@]"
get_info "display" "display_keys[@]"
get_info "network" "network_keys[@]"

# End

# Resources: I had to use ChatGPT, Google, and the course resources to create this code and get it to work.  It was saved in the Linux Lab computer.