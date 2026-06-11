[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle
 
    swayidle -w \
        timeout 10 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout 10800 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' &

    pidof swaylock || swaylock -f
}
