[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle

    idle_t=${1:-60}
    susp_t=${2:-300}
 
    swayidle -w \
        timeout $idle_t 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout $susp_t 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' & 

    pidof swaylock || swaylock -f
}
