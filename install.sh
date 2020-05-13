#!/bin/bash

cp -rf .fonts/ /home/$USER/
fc-cache -f -v
cp wallpapers/* /home/$USER/Pictures/
sudo apt install bspwm neovim compton compton-conf git curl python nitrogen dmenu rofi lxappearance

nitrogen --set-zoom-fill /home/$USER/Pictures/green.jpg
cp -rf .config/* /home/$USER/.config 


## POLYBAR DEPENDENCIES 

sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2

wget http://fr.archive.ubuntu.com/ubuntu/pool/universe/x/xcb-proto/python-xcbgen_1.11-0ubuntu1_all.deb -O xcbgen.deb
sudo dpkg -i xcbgen.deb

##POLYBAR MAKE

git clone https://github.com/jaagr/polybar.git
cd polybar
./build.sh




#NVIM
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cd /tmp/
git clone https://github.com/arcticicestudio/nord-xfce-terminal.git
cd nord-xfce-terminal
./install.sh


echo "VteTerminal, vte-terminal {
    padding: 16px;
}" >> /home/$USER/.config/gtk-3.0/gtk.css

##ZSH
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd /tmp/
git clone https://github.com/pascaldevink/spaceship-zsh-theme.git
cd spaceship-zsh-theme
zsh install.zsh
echo "PACESHIP_PROMPT_ADD_NEWLINE=false
alias vim=nvim" >> /home/$USER/.zshrc
