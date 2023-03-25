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

### [Waybar](https://github.com/zooboo44/boilerplates/tree/master/arch/waybar)

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

### VS Code Transparent
- Install
    ```
    git clone https://github.com/jnbooth/code-transparent/
    cd code-transparent
    makepkg -si
    ```
- Config
    - Replace config from ```~/.config/Code - OSS/User``` with [this](https://github.com/zooboo44/boilerplates/tree/master/arch/vscode-transparent)
- Takes a long time to install but works perfectly fine (from the minimal testing I've done)

### [SDDM](https://zooboo44.github.io/posts/arch/)

### Pipewire
- Install
    ```
    yay -S pipewire wireplumber pipewire-audio
    ```

### XDPH
- Install
    ```
    yay -S xdg-desktop-portal-hyprland-git
    ```

### Polkit
- Install
    ```
    yay -S polkit-kde-agent
    ```
- Add ```exec-once=/usr/lib/polkit-kde-authentication-agent-1``` to ```~/.config/hypr/hyprland.conf```

### QT Wayland Support
- Install
    ```
    yay -S qt5-wayland qt6-wayland
    ```

# Up Next
- [ ] Kde connect
- [ ] Starship
- [ ] Pipewire
- [ ] Nautilus
- [ ] [Rice](https://www.reddit.com/r/unixporn/comments/105mdur/hyprland_frosted_glass_everywhere/)

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