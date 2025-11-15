pacman -S --needed \
	pipewire wireplumber pipewire-alsa pipewire-jack pipewire-pulse \
	bluez bluez-utils network-manager wpa_supplicant \
	firefox openssh libreoffice alacritty git vim \
	libvirt power-profiles-daemon sudo efibootmgr grub


pacman -S --needed \
	sway swaylock swayidle swaybg waybar wofi \
	qt5ct qt6ct qt5-wayland qt6-wayland xorg-xwayland breeze-gtk breeze-icons \
	xdg-desktop-portal xdg-desktop-portal-wlr xdg-utils xdg-user-dirs \
	pavucontrol dolphin otf-font-awesome noto-fonts-cjk

# pacman -S --needed gnome gdm gnome-shell-extensions gnome-tweaks

# pacman -S --needed \
# 	plasma-desktop sddm dolphin \
# 	kinfocenter kscreen plasma-nm plasma-pa


systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable libvirtd
systemctl enable power-profiles-daemon
