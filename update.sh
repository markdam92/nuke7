#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://raw.githubusercontent.com/markdam92/nuke7/main/update/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/markdam92/nuke7/update/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/markdam92/nuke7/main/update/trial.sh"
wget -O change-port "https://raw.githubusercontent.com/markdam92/nuke7/main/update/change.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-ovpn.sh"
wget -O port-ssl "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-ssl.sh"
wget -O port-wg "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-wg.sh"
wget -O port-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-tr.sh"
wget -O port-sstp "https://raw.githubusercontent.com/markdam92/nuke/main/update/port-sstp.sh"
wget -O port-squid "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-squid.sh"
wget -O port-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-ws.sh"
wget -O port-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/update/port-vless.sh"
wget -O wbmn "https://raw.githubusercontent.com/markdam92/nuke7/main/update/webmin.sh"
wget -O xp "https://raw.githubusercontent.com/markdam92/nuke7/main/update/xp.sh"
wget -O limit-speed "https://raw.githubusercontent.com/markdam92/nuke7/main/update/limit-speed.sh"
wget -O add-sstp "https://raw.githubusercontent.com/markdam92/nuke7/main/update/add-sstp.sh"
wget -O add-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/update/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/update/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/update/add-tr.sh"
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x limit-speed
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
