# Install and configure Hyprland

### Prerequisites
- base-devel
- git
- yay
- kitty

### Install
- [Hyprland Wiki for more info](https://wiki.hyprland.org/)
- Install Hyprland
```
yay -S hyprland
```
- Clone Hyprland config from [here]() to ```~/.config/hypr/```

### Mako
- Install
    - ``` yay -S mako```

### Waybar
- Install
    - ```yay -S waybar-hyprland-git```
- add ```exec-once=waybar``` to ```~/.config/hypr/hyprland.conf```
- Run manually if not loaded at startup ```waybar > /dev/null 2>&1 &```

### Fonts
- Download [Cascadia Code](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
- Unzip
```
unzip Casc* -d cascadia
```
- Copy fonts from ```~/Downloads/cascadia``` to ```/usr/share/fonts/```
```
cp -r cascadia /usr/share/fonts
```

# Up Next
- [ ] Kde connect
- [ ] SDDM
- [ ] Waybar
- [ ] Starship
