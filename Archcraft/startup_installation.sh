# Creating relevant folders.
mkdir ~/Obsidian/
mkdir ~/BitBucket
mkdir -p ~/GitHub/Youngermaster/
mkdir -p ~/GitHub/AnotherOnes/
mkdir -p ~/GitLab/Youngermaster/
mkdir -p ~/GitLab/AnotherOnes/
mkdir -p ~/ISOs ~/AndroidStudio ~/Flutter
cd
mkdir -p BitBucket Downloads Documents Pictures/Wallpapers AzureDevOps GitHub/Youngermaster GitLab/Youngermaster

# Reflector: Faster Mirror Speeds for Arch Linux!
## Thanks to  DenshiVideo's video (https://youtu.be/-1xup2BHUKk)
sudo pacman -S reflector
sudo reflector --verbose --sort rate -l 30 --save /etc/pacman.d/mirrorlist

# General packages
sudo pacman -Syu iwd bind git vim neovim xorg xorg-xinit dmenu lxsession ranger lsd bat shotwell libx11 base-devel firefox flameshot neofetch alacritty feh networkmanager brightnessctl htop starship alsa-lib alsa-plugins alsa-utils nautilus dunst zathura zathura-pdf-mupdf scrcpy wmname arandr bpytop net-tools cmake flatpak tree redshift clang ninja
sudo pacman -S jdk11-openjdk jre11-openjdk

## Stuff
yay -S google-chrome spotify windscribe-bin teams slack-desktop onlyoffice-bin

## Communication stuff
sudo pacman -Syu discord wezterm flatpak

## Powerprofiles
sudo pacman -S power-profiles-daemon
sudo systemctl enable power-profiles-daemon.service

## Mouse and graphics utils
sudo pacman -S kdenlive krita piper

# ZSH Stuff
sudo pacman -S zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting wmname
sudo usermod --shell /usr/bin/zsh $USER
sudo usermod --shell /usr/bin/zsh root
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

## Python stuff
sudo pacman -S python3 python-pip python-pipenv python-virtualenv
pip3 install matplotlib numpy matplotlib jupyterlab

## Graphic Drivers
sudo pacman -Syu nvidia nvidia-utils nvidia-settings
yay -S envycontrol

# Audio Stuff
sudo pacman -Syu alsa alsa-utils pulsemixer

## More stuff
sudo pacman -Syu neofetch bspwm sxhkd nitrogen picom rofi

# GNOME stuff
yay -S gnome-browser-connector

## Qemu
sudo pacman -S archlinux-keyring
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat
sudo pacman -S libguestfs
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

# Containers stuff
sudo pacman -S docker kubectl

## Latex stuff
sudo pacman -S texlive-fontsextra texlive-core texlive-latexextra texlive-pictures texlive-science rubber

## More development stuff
### Remember to reboot the system after the installation of the keyring stuff
sudo pacman -Syu nodejs npm
xdg-mime default zathura.desktop application/pdf
yay -S visual-studio-code-bin
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

# Databases
yay -S mongosh-bin mongodb-bin mongodb-tools-bin mongodb-compass

# Hyperconfig
yay -S hyprland-bin polkit-gnome ffmpeg neovim viewnior       \
rofi pavucontrol thunar starship wl-clipboard wf-recorder     \
swaybg grimblast-git ffmpegthumbnailer tumbler playerctl      \
noise-suppression-for-voice thunar-archive-plugin kitty       \
waybar-hyprland wlogout swaylock-effects sddm-git pamixer     \
nwg-look-bin nordic-theme papirus-icon-theme dunst

# Check out these dotfiles
# https://github.com/iamverysimp1e/dots
