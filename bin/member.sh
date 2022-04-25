#!/bin/bash
g="\033[1;32m"
b="\033[1;34m"
n="\033[0m"

clear
echo -e "${b}================================="
echo -e " ${g}Username          Expired"
echo -e "${b}================================="
while read expired
do
AKUN="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
if [[ $ID -ge 1000 ]]; then
printf " ${n}%-17s %2s\n" "${AKUN}" "${exp}"
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "${b}================================="
echo -e " ${n}Jumlah user: ${g}${JUMLAH}"
echo -e "${b}================================="
printf "${n}"