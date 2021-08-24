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
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Start Patch"
echo "Fix Curl IP Address"
cd /usr/bin
cd /usr/bin
wget -O add-host "https://raw.githubusercontent.com/markdam92/nuke7/main/add-host.sh"
wget -O about "https://raw.githubusercontent.com/markdam92/nuke7/main/about.sh"
wget -O menu "https://raw.githubusercontent.com/markdam92/nuke7/main/menu.sh"
wget -O usernew "https://raw.githubusercontent.com/markdam92/nuke7/main/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/markdam92/nuke7/main/trial.sh"
wget -O hapus "https://raw.githubusercontent.com/markdam92/nuke7/main/hapus.sh"
wget -O member "https://raw.githubusercontent.com/markdam92/nuke7/main/member.sh"
wget -O delete "https://raw.githubusercontent.com/markdam92/nuke7/main/delete.sh"
wget -O cek "https://raw.githubusercontent.com/markdam92/nuke7/main/cek.sh"
wget -O restart "https://raw.githubusercontent.com/markdam92/nuke7/main/restart.sh"
wget -O speedtest "https://raw.githubusercontent.com/markdam92/nuke7/main/speedtest_cli.py"
wget -O info "https://raw.githubusercontent.com/markdam92/nuke7/main/info.sh"
wget -O ram "https://raw.githubusercontent.com/markdam92/nuke7/main/ram.sh"
wget -O renew "https://raw.githubusercontent.com/markdam92/nuke7/main/renew.sh"
wget -O autokill "https://raw.githubusercontent.com/markdam92/nuke7/main/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/markdam92/nuke7/main/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/markdam92/nuke7/main/tendang.sh"
wget -O clear-log "https://raw.githubusercontent.com/markdam92/nuke7/main/clear-log.sh"
wget -O add-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/add-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/add-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/add-tr.sh"
wget -O del-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/del-ws.sh"
wget -O del-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/del-vless.sh"
wget -O del-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/del-tr.sh"
wget -O cek-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/cek-ws.sh"
wget -O cek-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/cek-vless.sh"
wget -O cek-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/cek-tr.sh"
wget -O renew-ws "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-ws.sh"
wget -O renew-vless "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-vless.sh"
wget -O renew-tr "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-tr.sh"
wget -O certv2ray "https://raw.githubusercontent.com/markdam92/nuke7/main/cert.sh"
wget -O autobackup "https://raw.githubusercontent.com/markdam92/nuke7/main/autobackup.sh"
wget -O backup "https://raw.githubusercontent.com/markdam92/nuke7/main/backup.sh"
wget -O bckp "https://raw.githubusercontent.com/markdam92/nuke7/main/bckp.sh"
wget -O restore "https://raw.githubusercontent.com/markdam92/nuke7/main/restore.sh"
wget -O strt "https://raw.githubusercontent.com/markdam92/nuke7/main/strt.sh"
wget -O limit-speed "https://raw.githubusercontent.com/markdam92/nuke7/main/limit-speed.sh"
wget -O add-ss "https://raw.githubusercontent.com/markdam92/nuke7/main/add-ss.sh"
wget -O del-ss "https://raw.githubusercontent.com/markdam92/nuke7/main/del-ss.sh"
wget -O cek-ss "https://raw.githubusercontent.com/markdam92/nuke7/main/cek-ss.sh"
wget -O renew-ss "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-ss.sh"
wget -O add-wg "https://raw.githubusercontent.com/markdam92/nuke7/main/add-wg.sh"
wget -O del-wg "https://raw.githubusercontent.com/markdam92/nuke7/main/del-wg.sh"
wget -O cek-wg "https://raw.githubusercontent.com/markdam92/nuke7/main/cek-wg.sh"
wget -O renew-wg "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-wg.sh"
wget -O del-non "https://raw.githubusercontent.com/markdam92/nuke7/main/del-non.sh"
wget -O xp "https://raw.githubusercontent.com/markdam92/nuke7/main/xp.sh"
wget -O wss "https://raw.githubusercontent.com/markdam92/nuke7/main/wss.sh"
wget -O renew-non "https://raw.githubusercontent.com/markdam92/nuke7/main/renew-non.sh"
wget -O add-wstls "https://raw.githubusercontent.com/markdam92/nuke7/main/add-wstls.sh"
wget -O wgg "https://raw.githubusercontent.com/markdam92/nuke7/main/wgg.sh"
wget -O vls "https://raw.githubusercontent.com/markdam92/nuke7/main/vls.sh"
wget -O trj "https://raw.githubusercontent.com/markdam92/nuke7/main/trj.sh"
wget -O tessh "https://raw.githubusercontent.com/markdam92/nuke7/main/tessh.sh"
wget -O ssstp "https://raw.githubusercontent.com/markdam92/nuke7/main/ssstp.sh"
wget -O sssr "https://raw.githubusercontent.com/markdam92/nuke7/main/sssr.sh"
wget -O ltp "https://raw.githubusercontent.com/markdam92/nuke7/main/ltp.sh"
wget -O auto-reboot "https://raw.githubusercontent.com/markdam92/nuke7/main/auto-reboot.sh"
chmod +x autobackup
chmod +x backup
chmod +x del-non
chmod +x ltp
chmod +x sssr
chmod +x ssstp
chmod +x tessh
chmod +x trj
chmod +x vls
chmod +x wgg
chmod +x wss
chmod +x renew-non
chmod +x add-wstls
chmod +x auto-reboot
chmod +x bckp
chmod +x restore
chmod +x strt
chmod +x limit-speed
chmod +x add-host
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-tr
chmod +x certv2ray
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x renew-ss
chmod +x add-wg
chmod +x del-wg
chmod +x cek-wg
chmod +x renew-wg
wget -O /usr/bin/add-l2tp https://raw.githubusercontent.com/markdam92/nuke7/main/add-l2tp.sh && chmod +x /usr/bin/add-l2tp
wget -O /usr/bin/del-l2tp https://raw.githubusercontent.com/markdam92/nuke7/main/del-l2tp.sh && chmod +x /usr/bin/del-l2tp
wget -O /usr/bin/add-pptp https://raw.githubusercontent.com/markdam92/nuke7/main/add-pptp.sh && chmod +x /usr/bin/add-pptp
wget -O /usr/bin/del-pptp https://raw.githubusercontent.com/markdam92/nuke7/main/del-pptp.sh && chmod +x /usr/bin/del-pptp
wget -O /usr/bin/renew-pptp https://raw.githubusercontent.com/markdam92/nuke7/main/renew-pptp.sh && chmod +x /usr/bin/renew-pptp
wget -O /usr/bin/renew-l2tp https://raw.githubusercontent.com/markdam92/nuke7/main/renew-l2tp.sh && chmod +x /usr/bin/renew-l2tp
wget -O /usr/bin/ssr https://raw.githubusercontent.com/markdam92/nuke7/main/ssrmu.sh && chmod +x /usr/bin/ssr
wget -O /usr/bin/add-ssr https://raw.githubusercontent.com/markdam92/nuke7/main/add-ssr.sh && chmod +x /usr/bin/add-ssr
wget -O /usr/bin/del-ssr https://raw.githubusercontent.com/markdam92/nuke7/main/del-ssr.sh && chmod +x /usr/bin/del-ssr
wget -O /usr/bin/renew-ssr https://raw.githubusercontent.com/markdam92/nuke7/main/renew-ssr.sh && chmod +x /usr/bin/renew-ssr
wget -O /usr/bin/add-sstp https://raw.githubusercontent.com/markdam92/nuke7/main/add-sstp.sh && chmod +x /usr/bin/add-sstp
wget -O /usr/bin/del-sstp https://raw.githubusercontent.com/markdam92/nuke7/main/del-sstp.sh && chmod +x /usr/bin/del-sstp
wget -O /usr/bin/cek-sstp https://raw.githubusercontent.com/markdam92/nuke7/main/cek-sstp.sh && chmod +x /usr/bin/cek-sstp
wget -O /usr/bin/renew-sstp https://raw.githubusercontent.com/markdam92/nuke7/main/renew-sstp.sh && chmod +x /usr/bin/renew-sstp
echo "Done Patch"
rm -f patch.sh
