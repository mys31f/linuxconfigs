#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get remove libreoffice* thunderbird* hexchat* transmission* -y
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/debian/ buster main' -y
sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main" | sudo tee /etc/apt/sources.list.d/riot-im.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
wget https://zfgclients.zoomgov.com/prod/5.7.28991.0726/zoom_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb
wget https://github.com/Foundry376/Mailspring/releases/download/1.9.2/mailspring-1.9.2-amd64.deb
wget https://az764295.vo.msecnd.net/stable/6cba118ac49a1b88332f312a8f67186f7f3c1643/code_1.61.2-1634656828_amd64.deb
wget https://tetr.io/about/desktop/builds/TETR.IO%20Setup.deb
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install --install-recommends winehq-staging winetricks -y
sudo apt-get install sublime-text sublime-merge element-desktop ruby-full obs-studio ibus-mozc hplip-gui gimp krita inkscape telegram-desktop chromium android-tools-adb android-tools-fastboot mpv vlc firefox -y
sudo apt-get install ./*.deb -y
sudo apt-get install build-essential cmake git libmbedtls-dev libasound2-dev libavcodec-dev libavdevice-dev     libavfilter-dev libavformat-dev libavutil-dev libcurl4-openssl-dev libfdk-aac-dev libfontconfig-dev libfreetype6-dev libglvnd-dev libjack-jackd2-dev libjansson-dev libluajit-5.1-dev libpulse-dev libqt5x11extras5-dev libspeexdsp-dev libswresample-dev libswscale-dev libudev-dev libv4l-dev libvlc-dev libwayland-dev libx11-dev libx264-dev libxcb-shm0-dev libxcb-xinerama0-dev libxcomposite-dev libxinerama-dev pkg-config python3-dev qtbase5-dev qtbase5-private-dev libqt5svg5-dev swig libxcb-randr0-dev libxcb-xfixes0-dev libx11-xcb-dev libxcb1-dev libxss-dev qtwayland5 libgles2-mesa libgles2-mesa-dev make golang libx11-dev libxtst-dev libgtk-3-dev -y
sudo apt-get install libnss3-dev -y


