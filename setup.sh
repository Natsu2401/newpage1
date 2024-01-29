 sudo pacman -S neovim git bluez bluez-utils blueman neovim ruby nodejs npm python-pip unzip zsh alsa-utils playerctl brightnessctl polybar

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

yay -S rofi

#setup rofi Launchers 
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
rm -rf ~/rofi


#setup neovim 
pip install neovim --break-system-packages
sudo pip install pynvim --break-system-packages
sudo npm install -g neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

#setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
