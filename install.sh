#!/bin/bash
sudo apt-get update
sudo apt-get install xinit
sudo apt install x11-xserver-utils
sudo apt-get install software-properties-common
sudo apt-get update

#install i3 dependences
sudo apt-get install libxcb-xrm-dev
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake
'''
#instal i3-gaps
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install


#sudo apt install thunar feh
#instal polybar dependeces
sudo apt install build-essential git cmake cmake-data pkg-config libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev -y
cd ~
git clone --recursive https://github.com/jaagr/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
'''
#instal compton
sudo apt-get install compton rofi feh thunar gnome-terminal imagemagick

mkdir ~/.config/i3
mkdir ~/.config/polybar

cd ~
git clone https://github.com/anteczko/Nier-Automata-Rice.git

cp ~/Nier-Automata-Rice/configs/config ~/.config/i3/config
cp ~/Nier-Automata-Rice/configs/polybar_config ~/.config/polybar/config

mkdir ~/.fonts
cp ~/Nier-Automata-Rice/fonts/* ~/.fonts/
fc-cache -f -v

