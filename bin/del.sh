#!/bin/bash
g="\033[0;32m"
r="\033[1;31m"
n="\033[0m"

read -p $'\033[0;32m• \033[0mUsername: ' user

if getent passwd $user > /dev/null 2>&1; then
	userdel $user
	echo -e "Sukses menghapus User ${g}${user}${n}"
else
	echo -e "User ${r}${user} ${n}tidak ada!"
fi