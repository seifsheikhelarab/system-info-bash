#!/bin/bash

echo "-----------------------------"
echo "      SYSTEM INFO MENU"
echo ""
echo "1) Basic System Info"
echo "2) CPU Information"
echo "3) Memory Information"
echo "4) Disk Space"
echo "5) Network Information"
echo "6) Uptime"
echo "7) Exit"
echo "-----------------------------"

while true; do
  read -p "Choose an option (1-7): " choice

  case $choice in
    1)
      echo "-----------------------------"
      echo ""
      echo "Basic System Information:"
      echo ""
      echo "Hostname: $(hostname)"
      echo "Kernel Version: $(uname -r)"
      grep PRETTY_NAME /etc/os-release
      echo ""
      echo "-----------------------------"
      ;;
    2)
      echo "-----------------------------"
      echo ""
      echo "CPU Information:"
      echo ""
      lscpu | grep '^Model name'
      lscpu | grep '^CPU(s):'
      echo ""
      echo "-----------------------------"
      ;;
    3)
      echo "-----------------------------"
      echo ""
      echo "Memory Information:"
      echo ""
      free -h
      echo ""
      echo "-----------------------------"
      ;;
    4)
      echo "-----------------------------"
      echo ""
      echo "Disk Space Information:"
      echo ""
      df -h --total | awk '/^total/ {print "Total: " $2, "Used: " $3, "Available: " $4}'
      echo ""
      echo "-----------------------------"
      ;;
    5)
      echo "-----------------------------"
      echo ""
      echo "Network Information:"
      echo ""
      ip addr | grep 'inet ' | grep -v '127.0.0.1'
      echo ""
      echo "-----------------------------"
      ;;
    6)
      echo "-----------------------------"
      echo ""
      echo "System Uptime:"
      echo ""
      uptime -p
      echo ""
      echo "-----------------------------"
      ;;
    7)
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done

