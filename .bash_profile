#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${WAYLAND_DISPLAY:-}" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    export QT_QPA_PLATFORM='wayland'
    export QT_QPA_PLATFORMTHEME='qt6ct'
    export MOZ_ENABLE_WAYLAND=1

    exec sway
fi
