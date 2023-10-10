# Install and configure Hyprland

1. Install
- [Hyprland Wiki for more info](https://wiki.hyprland.org/)
- Install Hyprland
```
yay -S hyprland
```
- Clone Hyprland config from [here]() to ```~/.config/hypr/```

2. Install must have packages defined [here](https://wiki.hyprland.org/Useful-Utilities/Must-have/)
- All configs are in the hyprland config
### Mako
- ``` yay -S mako```

### Pipewire
- ```yay -S pipewire wireplumber pipewire-audio qjackctl pavucontrol```

### XDG Desktop Portal
- ```yay -S xdg-desktop-portal-hyprland-git```
    - If "ERROR: Dependency "sdbus-c++" not foun, tried pkgconfig and cmake" occus, install sdbus-c++ with ```yay -S sdbus-cpp```

### Polkit
- ```yay -S polkit-kde-agent```

### Qt Wayland Support
- ```yay -S qt5-wayland qt6-wayland```

3. Themeing

### [Waybar](https://github.com/zooboo44/dotfiles/tree/master/arch/waybar)

### [SDDM](https://zooboo44.github.io/posts/arch/)

### [Wofi](https://github.com/zooboo44/dotfiles/tree/master/wofi)

### [Starship](https://github.com/zooboo44/dotfiles/tree/master/starship)

### Fonts
- Download [Cascadia Code](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
- Unzip
```
unzip Casc* -d cascadia
```
- Copy fonts from ```~/Downloads/cascadia``` to ```/usr/share/fonts/```
```
sudo cp -r cascadia /usr/share/fonts
```

### VS Code Transparent
- Install
    ```
    git clone https://github.com/jnbooth/code-transparent/
    cd code-transparent
    makepkg -si
    ```
- Config
    - Replace config from ```~/.config/Code - OSS/User``` with [this](https://github.com/zooboo44/dotfiles/tree/master/arch/vscode-transparent)
- Takes a long time to install but works perfectly fine (from the minimal testing I've done)

### Arch Linux Tweak Tool
- Install
    ```
    yay -S archlinux-tweak-tool-git
    ```

### OBS
- Install
    ```
    yay -S obs-studio
    ```

### Nautilus
- Install
    ```
    yay -S nautilus
    ```

# Resources
- [Pre configured rice](https://youtu.be/lfUWwZqzHmA)
- [Frosted Glass Rice](https://www.reddit.com/r/unixporn/comments/105mdur/hyprland_frosted_glass_everywhere/)
- [Arch + Hyprland Tour in 60 Seconds](https://youtu.be/gOGM0uHCDFk?si=U2Ii3zK4pwFb95Q3)

# Issues

## #1
### Problem
- Arch system hangs on shutdown
```
A stop job is running for Simple Desktop Display Manager
```

### Resources
- [KDE plasma bug](https://bugs.kde.org/show_bug.cgi?id=449630)
- [Slow shutdown problems in kde plasma with sddm](https://github.com/sddm/sddm/issues/1476)
- [Reducing shutdown timeout for "a stop job is running"](https://github.com/sddm/sddm/issues/1476)

### Idea
- Replace with sddm-git instead
- [Modify default timeout for systemd stop to 15sec](https://unix.stackexchange.com/questions/328317/reducing-shutdown-timeout-for-a-stop-job-is-running)


### Solution
- Install sddm-git instead
- Didn't fix it