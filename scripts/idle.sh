[[ -n "${SWAYSOCK}" ]] && {
    pkill swayidle

    lock_t=${1:-120}
    idle_t=${2:-180}
    susp_t=${3:-300}
 
    swayidle -w \
        timeout $lock_t 'pidof swaylock || swaylock -f' \
        timeout $idle_t 'swaymsg "output * power off"' resume 'swaymsg "output * power on"' \
        timeout $susp_t 'systemctl suspend' \
        before-sleep 'pidof swaylock || swaylock -f' & 
}
