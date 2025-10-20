_schema() {
    gsettings set org.gnome.desktop.interface $1 $2
}

if [[ $SWAYSOCK ]]; then
    theme="${1:-Adwaita}"

    _schema gtk-theme "'${theme}'"
    _schema icon-theme "'${theme}'"
    _schema color-scheme 'prefer-dark'
    # _schema cursor-theme ""
    # _schema font-name ""
fi
