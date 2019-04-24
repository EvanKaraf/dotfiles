#!/usr/bin/bash

DOTFILES_ROOT=$(pwd -P)


echo "› Installing guake"
sudo apt-get --assume-yes install guake 1> /dev/null

echo "› Installing libinput-tools"
sudo apt-get --assume-yes install libinput-tools 1> /dev/null

echo "› Installing fusuma"
sudo apt-get --assume-yes install ruby-full 1> /dev/null
sudo gem install fusuma 1> /dev/null
mkdir -p $HOME/.config/fusuma
ln -sf  $DOTFILES_ROOT/ubuntu/config.yml $HOME/.config/fusuma/config.yml

echo "› Installing OpenSubtitlesDownload"
mkdir -p ~/.local/share/nautilus/scripts/
cd ~/.local/share/nautilus/scripts/
wget -q https://raw.githubusercontent.com/emericg/OpenSubtitlesDownload/master/OpenSubtitlesDownload.py 1> /dev/null
chmod u+x OpenSubtitlesDownload.py
sed -i -r s/\'eng\'/\'eng,ell\'/ OpenSubtitlesDownload.py
cd $DOTFILES_ROOT