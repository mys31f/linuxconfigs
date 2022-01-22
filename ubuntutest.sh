#!/bin/bash
sudo apt-get install ca-certificates software-properties-common -y
sudo apt-get update
sudo snap remove firefox
sudo snap remove snap-store
sudo snap remove gtk-common-themes
sudo snap remove gnome-3-38-2004
sudo snap remove core20
sudo snap remove core
sudo apt-get purge snapd -y
sudo apt-mark hold snapd
sudo apt-get remove libreoffice* thunderbird* hexchat* transmission* -y
sudo apt-get dist-upgrade -y
sudo apt-get install git wget curl make cmake xorriso fakeroot gcc apt-transport-https -y
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' -y
sudo wget -O /usr/share/keyrings/riot-im-archive-keyring.gpg https://packages.riot.im/debian/riot-im-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main" | sudo tee /etc/apt/sources.list.d/riot-im.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo add-apt-repository ppa:font-manager/staging -y
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa -y
sudo add-apt-repository ppa:saiarcot895/chromium-dev -y
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
wget https://cdn.zoom.us/prod/5.8.4.210/zoom_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb
wget https://github.com/Foundry376/Mailspring/releases/download/1.9.2/mailspring-1.9.2-amd64.deb
wget https://az764295.vo.msecnd.net/stable/6cba118ac49a1b88332f312a8f67186f7f3c1643/code_1.61.2-1634656828_amd64.deb
wget https://tetr.io/about/desktop/builds/TETR.IO%20Setup.deb
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install --install-recommends winehq-staging winetricks -y
sudo apt-get install font-manager sublime-text element-desktop sublime-merge ruby-full sublime-text obs-studio ibus-bamboo ibus-mozc hplip-gui gimp krita inkscape telegram-desktop ./*.deb chromium-browser firefox android-tools-adb android-tools-fastboot mpv vlc firefox chromium-browser ./*.deb -y
sudo apt-get autoremove -y
rm -f ./*.deb
rm -f ./*.key
sudo ubuntu-drivers autoinstall
sleep 15
shutdown

