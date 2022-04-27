#!/bin/bash
g="\033[0;32m"
c="\033[1;36m"
b="\033[1;34m"
n="\033[0m"

read -p $'\033[0;32m• \033[0mUsername: ' user
read -p $'\033[0;32m• \033[0mPassword: ' pass
read -p $'\033[0;32m• \033[0mExpired : ' masaaktif
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false $user
exp="$(chage -l $user | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$pass\n$pass\n"|passwd $user &> /dev/null
systemctl restart ssh
systemctl restart dropbear
ip=`curl -s ipv4.icanhazip.com`
clear
echo -e "${b}========== ${c}Informasi ${b}==========="
echo -e "${n}IP Address   ${c}: ${g}${ip}"
echo -e "${n}Username     ${c}: ${g}${user}"
echo -e "${n}Password     ${c}: ${g}${pass}"
echo -e "${n}Expired      ${c}: ${g}${exp}"
echo -e "${b}============ ${c}Port ${b}=============="
echo -e "${n}OpenSSH      ${c}: ${g}22"
echo -e "${n}Dropbear     ${c}: ${g}143"
echo -e "${n}SSL OpenSSH  ${c}: ${g}444"
echo -e "${n}SSL Dropbear ${c}: ${g}442"
echo -e "${n}WS TLS       ${c}: ${g}443"
echo -e "${n}WS Non-TLS   ${c}: ${g}80"
#echo -e "${n}Squid Proxy  ${c}: ${g}3128, 8080"
echo -e "${n}BadVPN Udpgw ${c}: ${g}7300, 7400, 7500"
echo -e "${b}======== ${c}by OsingTunnel ${b}========"
printf "${n}"
