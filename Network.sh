#!/bin/bash
OPTIONS="Full IP Exit"
echo "Welcome to Network Discovery.";
echo "";
select opt in $OPTIONS; do
  if [ "$opt" = "Full" ]; then
    echo "Starting Full network scan"
    nmap -sP 192.168.2.1/24
    exit
   elif [ "$opt" = "IP" ]; then
    echo "Enter the IP you want to scan: "
    read ip
    nmap -sP $ip
   elif [ "$opt" = "Exit" ]; then
    echo "Bye Bye"
    exit
   else
    clear
    echo "Bad option"
   fi
done
