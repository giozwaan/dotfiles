[[ $SWAYSOCK ]] && {
  idle_timeout=${1:-180}
  sleep_timeout=${2:-600}

  pkill swayidle

  swayidle -w \
    timeout $idle_timeout 'swaylock && swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    timeout $sleep_timeout 'systemctl suspend' &
}
