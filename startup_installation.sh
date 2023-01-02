# ! Make sure to install Paru first.
cd
mkdir -p BitBucket Downloads Documents Pictures/Wallpapers AzureDevOps GitHub/Youngermaster GitLab/Youngermaster
sudo pacman -Syu iwd bind git vim neovim xorg xorg-xinit dmenu lxsession ranger lsd bat shotwell libx11 base-devel firefox flameshot neofetch alacritty feh networkmanager brightnessctl htop starship alsa-lib alsa-plugins alsa-utils nautilus dunst zathura zathura-pdf-mupdf scrcpy wmname arandr bpytop net-tools

## Communication stuff
sudo pacman -Syu discord
paru -S teams

## Fonts
sudo pacman -S noto-fonts-cjk noto-fonts-emoji noto-fonts
paru -s nerd-fonts-hack

## Mouse and graphics utils
sudo pacman -S kdenlive krita piper

# ZSH Stuff
sudo pacman -S zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting wmname
sudo usermod --shell /usr/bin/zsh $USER
sudo usermod --shell /usr/bin/zsh root

## Python stuff
python3 python-pip python-pipenv python-virtualenv
pip3 install matplotlib numpy matplotlib jupyterlab

## Graphic Drivers
sudo pacman -Syu nvidia nvidia-utils nvidia-settings

# Audio Stuff
sudo pacman -Syu alsa alsa-utils pulsemixer

## More stuff
sudo pacman -Syu neofetch bspwm sxhkd nitrogen picom rofi

## AUR Stuff
paru -S lxappearance nordic-darker-theme lightdm betterlockscreen lightdm-webkit2-greeter wpgtk-git spicetify-cli-git

## Virtualbox stuff
sudo pacman -Syu virtualbox virtualbox-ext-vnc virtualbox-guest-iso virtualbox-guest-utils virtualbox-host-modules-arch
### Reboot the system an run
#### sudo modprove vboxdrv

# Containers stuff
sudo pacman -S docker kubectl

## Latex stuff
sudo pacman -S texlive-fontsextra texlive-core texlive-latexextra texlive-pictures texlive-science rubber

## More development stuff
### Remember to reboot the system after the installation of the keyring stuff
sudo pacman -Syu nodejs npm
xdg-mime default zathura.desktop application/pdf
paru -S visual-studio-code-bin
sudo pacman -S gnome-keyring libsecret libgnome-keyring seahorse
echo "# see https://unix.stackexchange.com/a/295652/332452                                                                                                                                        ─╯
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/GNOME/Keyring\#xinitrc
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966\#issuecomment-520083836
mkdir -p "$HOME"/.local/share/keyrings" >> ~/.xinitrc

## OBS
sudo pacman -Syu ffmpeg obs-studio vlc

## Ethernet stuff
sudo ip link set enp2s0 up

# Clock
sudo timedatectl set-ntp true
