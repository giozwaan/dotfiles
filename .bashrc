#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

[[ -d ~/VSCode/bin  ]] && export PATH="~/VSCode/bin:$PATH"

if [ -z "${WAYLAND_DISPLAY:-}" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    export QT_QPA_PLATFORM='wayland'
    export QT_QPA_PLATFORMTHEME='qt5ct:qt6ct'
    export MOZ_ENABLE_WAYLAND=1

    exec sway
fi
