#!/usr/bin/bash

echo "› Installing oh-my-zsh"
wget  https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -q -O install-zsh.sh
sudo chmod u+x install-zsh.sh
./install-zsh.sh > /dev/null 2>&1
echo "› Adding zsh-autosuggestions"
git clone -q https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions > /dev/null
rm -f ./install-zsh.sh