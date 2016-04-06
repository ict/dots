alias kodi='cd /var/lib/kodi/.kodi/'
alias kodilog='tail -f /var/lib/kodi/.kodi/temp/kodi.log'
alias hddlog='sudo journalctl _SYSTEMD_UNIT=hdd-spindown.service'
function pitemp () {
	awk '{printf "%3.1f°C\n", $1/1000}' /sys/class/thermal/thermal_zone0/temp
}
