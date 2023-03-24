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

# Issues

# Issue #1
## Problem
- Arch system hangs on shutdown
```
A stop job is running for Simple Desktop Display Manager
```

## Resources
- [KDE plasma bug](https://bugs.kde.org/show_bug.cgi?id=449630)
- [Slow shutdown problems in kde plasma with sddm](https://github.com/sddm/sddm/issues/1476)
- [Reducing shutdown timeout for "a stop job is running"](https://github.com/sddm/sddm/issues/1476)

## Idea
- Replace with sddm-git instead
- [Modify default timeout for systemd stop to 15sec](https://unix.stackexchange.com/questions/328317/reducing-shutdown-timeout-for-a-stop-job-is-running)


## Solution
- Install sddm-git instead
- Didn't fix it