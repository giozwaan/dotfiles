[[ $SWAYSOCK ]] && {
  pkill swayidle
  idle_timeout=${1:-20}
  sleep_timeout=${2:-120}

  swayidle -w \
    timeout $idle_timeout 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    timeout $sleep_timeout 'systemctl suspend' &
  
  swaylock -f 
}
