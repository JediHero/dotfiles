#!/bin/bash

# Install/upgrade neovim
sudo add-apt-repository ppa:neovim-ppa/stable 
sudo apt-get update
sudo apt-get install neovim

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Add aliases.sh to .bashrc
cat ./aliases.sh >> .bashrc

# Create init.vim
mkdir -p '~/.config/nvim'
rm ~/.config/nvim/init.vim
touch ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/plugins.vim   "Installs plugins' >> ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/settings.vim  "General settings' >> ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/mappings.vim  "Key mappings' >> ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/functions.vim "Functions' >> ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/paths.vim     "Paths' >> ~/.config/nvim/init.vim

# open nvim
nvim "+ PlugInstall"
