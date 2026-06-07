[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle
 
    swayidle -w \
        timeout 60 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout 9999 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' &

    pidof swaylock || swaylock -f
}
