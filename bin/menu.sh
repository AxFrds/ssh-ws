#!/bin/bash
g="\033[0;32m"
c="\033[1;36m"
b="\033[1;34m"
n="\033[0m"

clear
echo -e "${b}=============== ${c}Menu ${b}==============="
echo -e "${n}menu    ${c}: ${g}Cek menu perintah"
echo -e "${n}add     ${c}: ${g}Buat akun SSH"
echo -e "${n}trial   ${c}: ${g}Buat trial akun SSH"
echo -e "${n}del     ${c}: ${g}Hapus akun SSH"
echo -e "${n}restart ${c}: ${g}Restart semua layanan"
echo -e "${n}member  ${c}: ${g}Cek daftar SSH"
echo -e "${n}speed   ${c}: ${g}Tes speed VPS"
echo -e "${n}info    ${c}: ${g}Cek spesifikasi VPS"
echo -e "${n}bw      ${c}: ${g}Cek bandwidth VPS"
echo -e "${b}========== ${c}by OsingTunnel ${b}=========="
printf "${n}"