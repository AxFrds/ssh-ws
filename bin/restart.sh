#!/bin/bash
g="\033[0;32m"
n="\033[0m"

printf "${n}Restarting all services..."
systemctl daemon-reload
systemctl restart ssh
systemctl restart dropbear
systemctl restart fail2ban
systemctl restart stunnel4
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart squid
systemctl restart vnstat
printf " ${g}Done\n${n}"