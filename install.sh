#!/bin/bash

# install oh-my-zsh
cd ~
sudo apt install zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
rm install.sh
echo "exec zsh" >> ~/.bashrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' $HOME/.zshrc

# root environment
sudo ln -s $HOME/.oh-my-zsh /root/.oh-my-zsh
sudo ln -s $HOME/.zshrc /root/.zshrc
sudo echo "exec zsh" >> /root/.bashrc
