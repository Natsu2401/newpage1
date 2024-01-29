 sudo pacman -S neovim git bluez bluez-utils blueman neovim ruby nodejs npm python-pip unzip zsh

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

#setup neovim 
pip install neovim --break-system-packages
sudo pip install pynvim --break-system-packages
sudo npm install -g neovim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

#setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
