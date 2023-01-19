# ! Make sure to install Paru first.
mkdir ~/Obsidian/
mkdir ~/BitBucket
mkdir -p ~/GitHub/Youngermaster/
mkdir -p ~/GitHub/AnotherOnes/
mkdir -p ~/GitLab/Youngermaster/
mkdir -p ~/GitLab/AnotherOnes/
mkdir -p ~/ISOs ~/AndroidStudio ~/Flutter
cd
mkdir -p BitBucket Downloads Documents Pictures/Wallpapers AzureDevOps GitHub/Youngermaster GitLab/Youngermaster
sudo pacman -Syu iwd bind git vim neovim xorg xorg-xinit dmenu lxsession ranger lsd bat shotwell libx11 base-devel firefox flameshot neofetch alacritty feh networkmanager brightnessctl htop starship alsa-lib alsa-plugins alsa-utils nautilus dunst zathura zathura-pdf-mupdf scrcpy wmname arandr bpytop net-tools cmake flatpak

## Stuff
paru -S google-chrome spotify windscribe-bin

## Communication stuff
sudo pacman -Syu discord wezterm flatpak
paru -S teams

## Mouse and graphics utils
sudo pacman -S kdenlive krita piper

# ZSH Stuff
sudo pacman -S zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting wmname
sudo usermod --shell /usr/bin/zsh $USER
sudo usermod --shell /usr/bin/zsh root

## Python stuff
sudo pacman -S python3 python-pip python-pipenv python-virtualenv
pip3 install matplotlib numpy matplotlib jupyterlab

## Graphic Drivers
sudo pacman -Syu nvidia nvidia-utils nvidia-settings
paru -S optimus-manager optimus-manager-qt
## Battery life stuff
cd ~/GitHub/AnotherOnes
git clone https://github.com/BigAnteater/BetterBattery && cd BetterBattery
chmod +x
sudo ./jumpstart.sh
paru -S nbfc-linux

# Audio Stuff
sudo pacman -Syu alsa alsa-utils pulsemixer

## More stuff
sudo pacman -Syu neofetch bspwm sxhkd nitrogen picom rofi

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

## OBS
### Install Headers
### sudo pacman -S linux61-headers
sudo pacman -Sy v4l2loopback-dkms
sudo pacman -Syu ffmpeg obs-studio vlc

# Config files
cp -r .config/* ~/.config

# Fonts
mkdir -p ~/.fonts/
mkdir -p ~/.local/share/fonts/
cp -r fonts/* ~/.fonts/
cp -r fonts/* ~/.local/share/fonts/
fc-cache -fv

# Flatpak
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub md.obsidian.Obsidian -y
