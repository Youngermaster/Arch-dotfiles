# ! Make sure to install Paru first.

cd
mkdir -p Downloads Documents Pictures AzureDevOps GitHub/Youngermaster GitLab/Youngermaster
sudo pacman -Syu iwd git vim neovim xorg xorg-xinit dmenu lxsession ranger lsd bat libx11 base-devel firefox flameshot neofetch alacritty feh networkmanager brightnessctl htop starship alsa-lib alsa-plugins alsa-utils nautilus dunst

## Graphic Drivers
sudo pacman -Syu nvidia nvidia-utils nvidia-settings

## More stuff
sudo pacman -Syu neofetch bspwm sxhkd nitrogen picom rofi

## AUR Stuff
paru -S lxappearance nordic-darker-theme lightdm betterlockscreen lightdm-webkit2-greeter wpgtk-git spicetify-cli-git

## Virtualbox stuff
sudo pacman -Syu virtualbox virtualbox-ext-vnc virtualbox-guest-iso virtualbox-guest-utils virtualbox-host-dkms 

## More development stuff
sudo pacman -Syu nodejs npm

## Ethernet stuff
sudo ip link set enp2s0 up
