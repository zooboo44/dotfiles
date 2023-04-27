---
# Install and configure awesome
### Install X and awesome
- Install awesome
```
sudo pacman -S awesome
```
- Copy xinitrc
```
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
```
- Remove lines past ```twm &``` and replace with ```exec awesome```

- Copy rc.lua
    ```
    mkdir ~/.config/awesome
    cp /etc/xdg/awesome/rc.lua ~/.config/awesome/rc.lua
    ```
    or clone ```rc.lua``` from [here](https://github.com/zooboo44/dotfiles)

- Run ```startx``` wait for prompt to hang then force shutdown and ```startx``` should work fine

### Configure AwesomeWM
- Install picom
    - ```yay -S picom-jonaburg-git```
    - Copy example picom config
    ```
    mkdir ~/.config/picom
    copy /etc/xdg/example.picom.conf ~/.config/picom/picom.conf
    ```
    or clone picom.conf from [here](https://github.com/zooboo44/dotfiles)
- Polybar
    - ```yay -S polybar```
    - Remove existing bar (wibar)
    - Create [launch.sh](https://github.com/zooboo44/dotfiles) script to launch bar
    - Launch bar from rc.lua to launch using [config.ini](https://github.com/zooboo44/dotfiles)
        - ```awful.spawn.with_shell("/home/zooboo/.config/polybar/launch.sh")```
    - Added [battery module](https://github.com/polybar/polybar/wiki/Module:-battery)
    - Add applets
        - kmix
            - ```yay -S kmix```
        - network-manager
            - ```yay -S network-manager-applet```
        - Add autostarts to AwesomeWM config
    
    
### Resources
- [How To Install and Configure Awesome WM](https://archlinuxblog.medium.com/installing-and-configuring-awesome-wm-b4684fd09c9)
- [Bulk of initial AWM config](https://youtu.be/nC_e8Gw1XlA)
- [Polybar](https://youtu.be/ibRa4A4pIws)
- [Configure Alacritty](https://youtu.be/76GbxnD8wnM)
- [Battery Notifications](https://youtu.be/3wTt6fStYCI)
- [Rofi](https://youtu.be/TutfIwxSE_s)
- [Polybar](https://youtu.be/ibRa4A4pIws)

### Up Next
- [Polybar](https://youtu.be/ibRa4A4pIws)
- [ ] Configure picom blur