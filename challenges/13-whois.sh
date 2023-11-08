#!/bin/bash

# Function to gather domain information
gather_info() {
    domain="$1"
    echo "WHOIS Information:" >> domain_info.txt
    whois "$domain" >> domain_info.txt
    echo -e "\nDIG Information:" >> domain_info.txt
    dig "$domain" >> domain_info.txt
    echo -e "\nHOST Information:" >> domain_info.txt
    host "$domain" >> domain_info.txt
    echo -e "\nNSLOOKUP Information:" >> domain_info.txt
    nslookup "$domain" >> domain_info.txt
}

# Main menu
echo "Domain Information Tool"
echo "1. WHOIS Lookup"
echo "2. DIG Lookup"
echo "3. HOST Lookup"
echo "4. NSLOOKUP"
echo "5. Get Domain Info"

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        read -p "Enter the domain name: " domain_name
        whois "$domain_name"
        ;;
    2)
        read -p "Enter the domain name: " domain_name
        dig "$domain_name"
        ;;
    3)
        read -p "Enter the domain name: " domain_name
        host "$domain_name"
        ;;
    4)
        read -p "Enter the domain name: " domain_name
        nslookup "$domain_name"
        ;;
    5)
        read -p "Enter the domain name: " domain_name
        gather_info "$domain_name"
        echo "Domain information has been gathered and saved to domain_info.txt"
        ;;
    *)
        echo "Invalid choice. Please enter a valid option (1-5)."
        ;;
esac

# Path: challenges/14-whois.sh
