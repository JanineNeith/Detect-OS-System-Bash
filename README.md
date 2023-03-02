# Detect-OS-System-Bash

Using the command -v command, the script initially verifies whether the nmap program is installed. The script quits with an error message if nmap is not installed.

The IP address is requested from the user and saved to the target ip variable by the script before being read by the read command.

The script scans the target IP address and turns off ping probes using the nmap command with the -O and -Pn options.

The nmap command's output is routed to grep, which looks for a line that contains the OS details, and then to awk, which extracts the details from that line.

Using the -z option and the if statement, the script determines whether OS information was discovered.

If no OS details were discovered, the script displays an error message. The script displays the OS Information if it was discovered.

Use the./detect-os.sh command to launch this script from the command line after saving it to a file with .sh extension and make it executable using the chmod +x command.

When we enter an IP address to be scanned, the script will ask you to do so before displaying the target IP adress's operating system.
