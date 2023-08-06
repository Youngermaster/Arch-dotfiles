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
sudo pacman -Syu iwd bind git vim neovim xorg xorg-xinit dmenu lxsession ranger lsd bat shotwell libx11 base-devel firefox flameshot neofetch alacritty feh networkmanager brightnessctl htop starship alsa-lib alsa-plugins alsa-utils nautilus dunst zathura zathura-pdf-mupdf scrcpy wmname arandr bpytop net-tools cmake flatpak tree redshift clang ninja neovim
sudo pacman -S jdk11-openjdk jre11-openjdk

# Doom Emacs
sudo pacman -S git emacs ripgrep fd

## OBS
### Install Headers
sudo pacman -S linux-headers
sudo pacman -Sy v4l2loopback-dkms
sudo pacman -Syu ffmpeg obs-studio vlc

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
yay -S system76-firmware-daemon-git system76-firmware firmware-manager-git system76-power-git gnome-shell-extension-system76-power-git system76-driver system76-dkms system76-acpi-dkms
cd ~/GitHub/AnotherOnes
git clone https://aur.archlinux.org/system76-dkms.git
cd system76-dkms
makepkg -srcif
yay -S system76-dkms
cd ~/GitHub/AnotherOnes
git clone https://aur.archlinux.org/system76-acpi-dkms.git
cd system76-acpi-dkms
makepkg -srcif
yay -S system76-power system76-acpi-dkms system76-dkms system76-io-dkms
sudo systemctl enable --now com.system76.PowerDaemon.service
sudo systemctl enable --now system76-firmware-daemon
sudo gpasswd -a $USER adm
sudo systemctl enable com.system76.PowerDaemon.service
sudo systemctl start com.system76.PowerDaemon.service
sudo systemctl mask power-profiles-daemon.service

# Audio Stuff
sudo pacman -Syu alsa alsa-utils pulsemixer

## More stuff
sudo pacman -Syu neofetch bspwm sxhkd nitrogen picom rofi

# GNOME stuff
sudo pacman -S gnome gnome-tweaks
sudo pacman -S packagekit-qt6
sudo pacman -S gnome-packagekit gnome-software gnome-software-packagekit-plugin
yay -S gradience-git
yay -S gnome-browser-connector

## Applications
yay -S notion-app figma-linux-bin

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
sudo groupadd docker
sudo usermod -aG docker $USER

## Latex stuff
sudo pacman -S texlive-fontsextra texlive-core texlive-latexextra texlive-pictures texlive-science rubber

## More development stuff
### Remember to reboot the system after the installation of the keyring stuff
sudo pacman -Syu nodejs-lts-hydrogen npm yarn
xdg-mime default zathura.desktop application/pdf
yay -S visual-studio-code-bin
sudo pacman -S gnome-keyring libsecret libgnome-keyring seahorse

# Flatpak
flatpak install flathub io.github.mimbrero.WhatsAppDesktop -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub md.obsidian.Obsidian -y

# Databases
yay -S mongosh-bin mongodb-bin mongodb-tools-bin mongodb-compass

# Hyperconfig
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info
yay -S hyprland-nvidia-git touchegg
sudo systemctl enable touchegg.service && sudo systemctl start touchegg.service
yay -S polkit-gnome ffmpeg neovim viewnior       \
pavucontrol thunar starship wl-clipboard wf-recorder     \
swaybg grimblast-git ffmpegthumbnailer tumbler playerctl      \
noise-suppression-for-voice thunar-archive-plugin kitty       \
waybar-hyprland-git wlogout swaylock-effects pamixer     \
nwg-look-bin papirus-icon-theme dunst
yay -S rofi dunst kitty swaybg swaylock-fancy-git swayidle pamixer light brillo
yay -S bc blueberry bluez coreutils dbus findutils gawk jaq-git light networkmanager network-manager-applet pavucontrol playerctl procps ripgrep socat udev upower util-linux wget wireplumber wlogout eww-wayland pipewire-pulse
yay -S waybar-hyprland-git
yay -S grim swappy slurp
yay -S rofi-emoji ttf-font-awesome
yay -S nwg-look
sudo chmod +s /usr/bin/light
## Screen sharing fix
sudo pacman -S pipewire wireplumber grim slurp
yay -S xdg-desktop-portal-hyprland-git
cd ~/GitHub/AnotherOnes
git clone --depth=1 https://github.com/decaycs/decay-gtk
cd decay-gtk
mkdir -p ~/.themes
cp -r ./Themes/Dark-decay ~/.themes

cd ~/GitHub/Youngermaster/Arch-dotfiles/Archcraft/
# Config files
cp -r .config/* ~/.config

# Fonts
mkdir -p ~/.fonts/
mkdir -p ~/.local/share/fonts/
cp -r fonts/* ~/.fonts/
cp -r fonts/* ~/.local/share/fonts/
fc-cache -fv

## TODO: Create my custo sugar-dark
# Personalization to SDDM
yay -S sddm-sugar-dark
# Then edit `/usr/lib/sddm/sddm.conf.d/default.conf`
# And `/usr/share/sddm/themes`

## ! TODO Add the Fonts from the Google Drive
## ! TODO add the README.md pictures

# Check out these dotfiles
# https://github.com/iamverysimp1e/dots

# making Android Studio global
sudo ln -s /home/youngermaster/AndroidStudio/android-studio/bin/studio.sh /usr/bin/android-studio
