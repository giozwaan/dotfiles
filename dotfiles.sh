#!/usr/bin/bash

cp -r $HOME/.config/sway $HOME/dotfiles/.config
cp -r $HOME/.config/swaylock $HOME/dotfiles/.config
cp -r $HOME/.config/waybar $HOME/dotfiles/.config
cp -r $HOME/.config/wofi $HOME/dotfiles/.config
cp -r $HOME/.config/fastfetch $HOME/dotfiles/.config
cp -r $HOME/.config/nvim $HOME/dotfiles/.config

cp -r $HOME/scripts $HOME/dotfiles/scripts

cp $HOME/.bashrc $HOME/dotfiles
cp $HOME/.bash_aliases $HOME/dotfiles
cp $HOME/.bash_profile $HOME/dotfiles
cp $HOME/.tmux.conf $HOME/dotfiles
cp $HOME/dotfiles.sh $HOME/dotfiles
cp $HOME/packages.sh $HOME/dotfiles
