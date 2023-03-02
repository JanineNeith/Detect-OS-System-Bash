#!/bin/bash

# Check if the nmap tool is installed
if ! command -v nmap &> /dev/null; then
    echo "nmap is not installed. Please install nmap before running this script."
    exit 1
fi

# Prompt the user for the IP address to scan
read -p "Enter the IP address to scan: " target_ip

# Scan the target IP address and extract the OS information
os_info=$(nmap -O -Pn $target_ip | grep -i 'os details' | awk -F': ' '{print $2}')

# Check if OS information was found
if [ -z "$os_info" ]; then
    echo "Unable to determine the operating system of the target IP address."
else
    echo "The operating system of the target IP address is: $os_info"
fi
