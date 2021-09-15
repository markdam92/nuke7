#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[033;1mIPVPS:\e[0m $IPVPS"
echo -e  ""
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   "                             MENU OPTION\e[m" | lolcat 
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   "   1\e[1;33m)\e[m SSH & OpenVPN Menu"
echo -e   "   2\e[1;33m)\e[m Panel Wireguard "
echo -e   "   3\e[1;33m)\e[m Panel SSR & SS Account"
echo -e   "   4\e[1;33m)\e[m Panel V2Ray"
echo -e   "   5\e[1;33m)\e[m Panel VLess"
echo -e   "   6\e[1;33m)\e[m Panel TRojan"
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   "   7\e[1;33m)\e[m   Add Subdomain Host For VPS"
echo -e   "   8\e[1;33m)\e[m   Renew Certificate V2RAY"
echo -e   "   9\e[1;33m)\e[m   Change Port All Account"
echo -e   "   10\e[1;33m)\e[m  Autobackup Data VPS"
echo -e   "   11\e[1;33m)\e[m  Backup Data VPS"
echo -e   "   12\e[1;33m)\e[m  Restore Data VPS"
echo -e   "   13\e[1;33m)\e[m  Webmin Menu"
echo -e   "   14\e[1;33m)\e[m  Limit Bandwith Speed Server"
echo -e   "   15\e[1;33m)\e[m  Check Usage of VPS Ram" 
echo -e   "   16\e[1;33m)\e[m  Reboot VPS"
echo -e   "   17\e[1;33m)\e[m  Speedtest VPS"
echo -e   "   18\e[1;33m)\e[m  Information Display System" 
echo -e   "   19\e[1;33m)\e[m  Info Script Auto Install"
echo -e   "   20\e[1;33m)\e[m  Install BBR"
echo -e   "   21\e[1;33m)\e[m  Add ID Cloudflare"
echo -e   "   22\e[1;33m)\e[m  Pointing BUG"
echo -e   "   23\e[1;33m)\e[m  Clear log"
echo -e   "   24\e[1;33m)\e[m  Auto Reboot"
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m════════════════════════════════════════════════════════════\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-24 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
ssssr
;;
4)
v2raay
;;
5)
vleess
;;
6)
trojaan
;;
7)
add-host
;;
8)
certv2ray
;;
9)
change-port
;;
10)
autobackup
;;
11)
backup
;;
12)
restore
;;
13)
wbmn
;;
14)
limit-speed
;;
15)
ram
;;
16)
reboot
;;
17)
speedtest
;;
18)
info
;;
19)
about
;;
20)
bbr
;;
21)
cff
;;
22)
cfh
;;
23)
clear-log
;;
24)
autoreboot
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac