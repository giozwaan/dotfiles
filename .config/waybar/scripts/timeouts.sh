ps -aux | grep 'swayidle' | grep -Eo 'timeout [0-9]+' | awk '{print $2}' | xargs echo -n
