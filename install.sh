#!/bin/bash
# vim gets installed first? At least Vunlde repo will first
echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# With Vundle installed, can go ahead and copy over my vimrc
echo "Moving vimrc file to appropiate location"
cp vimrc_archie ~/.vimrc

echo "Copying fonts for powerline"
# -------------------------------------------------------------
# Got this from the powerline github, installs powerline fonts for me regardless of enironment
#https://github.com/powerline/fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
# -------------------------------------------------------------

echo " Making directory and copying i3 config file over"
# Will use archie box(actual desktop) file
mkdir ~/.config/i3
cp archie_box_i3_config ~/.config/i3/config

echo "Copying Xresources over for URxvt"
# Copying Xresources for urxvt and reloading the file afterwards
cp Xresources ~/.Xresources
xrdb ~/.Xresources

echo "Installing powerline from pip3"
# Installing powerline
pip3 install --user powerline-status

echo "Copying over tmux config file over"
# Copy over tmux config file
cp tmux.conf ~/.tmux.conf
