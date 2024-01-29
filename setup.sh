sudo pacman -S neovim git bluez bluez-utils blueman

#Enable the Service
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

#Connecting Audio
sudo pacman -S pulseaudio
sudo pacman -S pulseaudio-bluetooth
sudo pacman -S pavucontrol

# install yay 
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
makepkg -si
cd
rm -rf /tmp/yay
