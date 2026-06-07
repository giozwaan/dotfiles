[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle

    swayidle -w \
        timeout 120 'pidof swaylock || swaylock -f' \
        timeout 180 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout 300 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' & 
}
