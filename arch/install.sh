#!/bin/bash
sudo pacman -Syu
sudo pacman -S git openssh base-devel vim nano kitty wget
cd ~
mkdir git
cd git
git clone https://aur.archlinux.org/yay-git.git
cd yay
makepkg -si


yay -S hyprland-git
mkdir ~/.config/hyprland
cd ~/.config/hyprland
ln -s ~/git/dotfiles/arch/hyprland ~/.config/hyprland/hyprland.conf


yay -S networkmanager
yay -S bluez bluesz-utils bluetuith
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service


yay -S alacritty mako unzip
cd ~
mkdir Downloads
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip
unzip Cas -d cascadia
cp -r ~/Downloads/cascadia /usr/share/fonts/

mkdir ~/.config/alacritty
ln -s ~/git/dotifles/arch/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s ~/git/dotifles/arch/alacritty/nord.yml ~/.config/alacritty/nord.yml

yay -S pipewire wireplubmer pipewire-autio qjackctl pavucontrol
yay -S xdg-desktop-portal-hyprland-git
yay -S polkit-kde-agent

yay -S waybar-hyprland-git
mkdir .config/waybar
ln -s ~/git/dotifles/arch/waybar/config ~/.config/waybar/config
ln -s ~/git/dotifles/arch/waybar/stye.css ~/.config/waybar/style.css

yay -S brave-bin
