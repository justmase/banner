#!/bin/bash

# Warna
GREEN='\e[32m'
BLUE='\e[34m'
YELLOW='\e[33m'
CYAN='\e[36m'
RESET='\e[0m'

# Banner
echo -e "${GREEN}==============================="
echo -e "${BLUE} 🚀 Welcome to $(hostname)! "
echo -e "${GREEN}===============================${RESET}"

# Sistem Informasi
echo -e "${YELLOW}📌 OS: $(lsb_release -d | cut -f2)"
echo -e "🕒 Uptime: $(uptime -p)"
echo -e "🔥 CPU Load: $(top -bn1 | grep 'load average' | awk '{print $10 $11 $12}')"
echo -e "🧠 RAM Usage: $(free -m | awk '/Mem:/ {print $3"MB / "$2"MB"}')"
echo -e "💾 Disk Usage: $(df -h / | awk 'NR==2 {print $3" / "$2}')"
echo -e "🌐 IP Address: $(hostname -I | awk '{print $1}')"

echo -e "${CYAN}🔗 SSH Connections: $(who | wc -l) users connected"
echo -e "${RESET}================================="
