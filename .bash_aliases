set -u

cht() {
  [ $# -eq 0 ] && return
  curl cheat.sh/"${1}"
}

enc-file-gpg() {
  if [ -d $1 ]; then
    tar_file="${1}.tar.gz"
    tar czf $tar_file $1
    enc-file-gpg $tar_file
    rm $tar_file
    return
  fi

  if [ ! -f $1 ]; then
    return
  fi

  gpg \
    --symmetric \
    --cipher-algo aes256 \
    --s2k-count 65011712 \
    --pinentry-mode loopback \
    --no-symkey-cache \
    $1
}

dec-file-gpg() {
  if [ ! -f $1 ]; then
    return
  fi

  _file=$(basename $1 | sed "s\.gpg$\\\\")
  
  gpg \
    --decrypt \
    --pinentry-mode loopback \
    --no-symkey-cache \
    --output $_file \
    $1
}

gen_mirrors() {
    out="${HOME}/mirrorlist"
    reflector \
        --save $out \
        --protocol https \
        --country Netherlands,France,Germany \
        --age 12 \
        --sort rate
}
