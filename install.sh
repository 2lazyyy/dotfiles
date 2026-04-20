#!/bin/bash

# INSTALLING APPS NEEDED

#sudo apt update
#sudo apt install -y firefox-esr bspwm sxhkd imagemagick zsh kitty fonts-dejavu-core git jq curl rofi feh gh ninja-build libmpdclient-dev libxcb-util0-dev xcb-proto libxcb-composite0-dev libpulse-dev libiw-dev libcurl4-openssl-dev libasound2-dev cmake build-essential python3-sphinx libuv1-dev libuv1 libx11-dev libxcb-randr0-dev libxcb-xinerama0-dev libxcb1-dev libxcb-util0-dev libx11-xcb-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-present-dev libxcb-sync-dev libxi-dev libxrandr-dev python3 python3-pip python3-setuptools python3-wheel python3-xcbgen mpd mpc
#mkdir $HOME/.config/bspwm && mkdir $HOME/.config/sxhkd && mkdir $HOME/.config/buildsrc

# INSTALLING NERD FONTS.
#
# mkdir -p "$HOME/.local/share/fonts"
# wget -P "$HOME/.local/share/fonts" https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
# unzip JetBrainsMono.zip -d "$HOME/.local/share/fonts/"
#
# GIT CLONE WALLPAPER FOLDER INTO THE PICTURES FOLDER.
#git clone https://github.com/2lazyyy/walls.git $HOME/Pictures

# BUILDING NEOVIM FROM SOURCE

#if [! -d "$HOME/.config/buildsrc/neovim"]; then
#    git clone https://github.com/neovim/neovim "$HOME/.config/buildsrc/neovim"
#fi
#
#cd "$HOME/.config/buildsrc/neovim" || exit
#git checkout stable
#
#make CMAKE_BUILD_TYPE=RelWithDebInfo
#sudo make install && cd "$HOME"

#BUILDING POLYBAR FROM SOURCE.

#if [! -d "$HOME/.config/buildsrc/polybar"]; then
#	git clone https://github.com/polybar/polybar.git "$HOME/.config/buildsrc/polybar"
#fi

#bash "$HOME/.config/buildsrc/polybar/build.sh"

# GETTING DOTFILES.
#git clone https://github.com/2lazyyy/dotfiles.git "$HOME/.cofig" && mv * "$HOME/.config/dotfiles/" $HOME/.config

#chmod +x $HOME/.config/bspwm/bspwmrc && chmod +x $HOME/.config/sxhkd/sxhkdrc
#git clone https://github.com/13-CF/afetch.git $HOME/.config && sudo make clean install -C $HOME/.config/afetch

# INSTALLING NVIDIA DRIVERS: https://www.youtube.com/watch?v=QqINMp1UOnY

#sudo mv -f $HOME/.config/dotfiles/install/configfiles/sources.list /etc/apt/sources.list
#sudo apt modernize-sources
#sudo apt update && sudo apt install linux-headers-$(dpkg --print-architecture)
#sudo apt install nvidia-kernel-dkms nvidia-driver firmware-misc-nonfree

#CONFIGURING KEYBOARD BRIGHTNESS TO LAPTOP
#(directories might be different because of your hardware)

#echo "3" | sudo tee /sys/class/leds/asus::kbd_backlight/brightness > /dev/null

#CONFIGURING SOFT TOUCH FOR LAPTOP

#sudo mkdir -p /etc/X11/xorg.conf.d

#sudo tee -a /etc/X11/xorg.conf.d/40-libinput.conf > /dev/null << 'EOF'
#Section "InputClass"
#    Identifier "libinput touchpad catchall"
#    MatchIsTouchpad "on"
#    MatchDevicePath "/dev/input/event*"
#    Driver "libinput"
#    Option "Tapping" "on"
#    Option "TappingDrag" "on"
#    Option "NaturalScrolling" "true"
#EndSection
#EOF

# MAKES SO WHEN LAPTOP LID IS CLOSED THE LAPTOP KEEPS FUNCTIONING.

#sudo cp /etc/systemd/logind.conf /etc/systemd/logind.conf.bak
# Set HandleLidSwitch=ignore
#sudo sed -i 's/^#\?HandleLidSwitch=.*/HandleLidSwitch=ignore/' /etc/systemd/logind.conf
# Set HandleLidSwitchDocked=ignore
#sudo sed -i 's/^#\?HandleLidSwitchDocked=.*/HandleLidSwitchDocked=ignore/' /etc/systemd/logind.conf
#sudo systemctl restart systemd-logind

# to-do list

# configure rofi and picom (for transparent terminal).
# configure zsh.
# reboot
