_scheme() {
    gsettings set org.gnome.desktop.interface $1 $2
}

if [[ $SWAYSOCK ]]; then
    theme="${1:-Breeze}"
    color_scheme="prefer-light"

    if [ "${2:-}" = "d" ]; then
        color_scheme="prefer-dark"
    fi

    _scheme gtk-theme "'${theme}'"
    _scheme icon-theme "'${theme}'"
    _scheme color-scheme "'${color_scheme}'"
    # _schema cursor-theme ""
    # _schema font-name ""
fi
