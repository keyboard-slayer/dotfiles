#!/bin/bash

if ! command -v git &>/dev/null
then
    sudo pacman -S git
fi

if ! command -v yay &>/dev/null
then
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si
    cd ../
fi

yay -S --needed google-chrome bemenu-wayland nodejs hyprpaper gnome-keyring \
    xdg-desktop-portal-hyprland xdg-utils brightnessctl discord \
    imv waybar wayshot slurp wl-clipboard blueberry pavucontrol \
    pipewire pipewire-pulse pipewire-audio ttf-cascadia-code \
    ttf-comic-mono-git otf-font-awesome ttf-roboto noto-fonts-emoji \
    visual-studio-code-bin kitty hyprland stow neofetch fish neovim \
    tmux mako man man-pages wdisplays


systemctl --user enable --now pipewire
systemctl --user enable --now pipewire-pulse

sudo systemctl enable --now bluetooth

chsh -s /usr/bin/fish

mkdir ~/Pictures
bash ./stow.sh
