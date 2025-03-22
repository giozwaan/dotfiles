#!/usr/bin/bash

set -u

timeouts="${HOME}/timeouts"

_write() {
  echo $1 $2 > $timeouts
}

_idle() {
  pkill swayidle
  idle_timeout=${1:-120}
  sleep_timeout=${2:-300}
  _write $idle_timeout $sleep_timeout

  swayidle -w \
    timeout $idle_timeout 'swaylock && swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    timeout $sleep_timeout 'systemctl suspend' &
}

_lock() {
  pkill swayidle
  idle_timeout=${1:-20}
  sleep_timeout=${2:-120}
  _write $idle_timeout $sleep_timeout

  swayidle -w \
    timeout $idle_timeout 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
    timeout $sleep_timeout 'systemctl suspend' &
  
  swaylock -f 
}

[[ $SWAYSOCK ]] && {
  arg=${1:-}
  shift

  case $arg in
    lock  ) _lock $@;;
    *     ) _idle $@;;
  esac
}
