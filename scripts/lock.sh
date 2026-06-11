[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle
 
    swayidle -w \
        timeout 10 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout 180 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' &

    pidof swaylock || swaylock -f
}
