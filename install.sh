#!/bin/bash
# vim gets installed first? At least Vunlde repo will first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# With Vundle installed, can go ahead and copy over my vimrc
cp vimrc_archie ~/.vimrc

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

# Will use archie box(actual desktop) file
cp archie_box_i3_config ~/.config/i3/config

# Copying Xresources for urxvt and reloading the file afterwards
cp Xresources ~/.Xresources
xrdb ~/.Xresources

# Installing powerline
pip3 install --user powerline-status

# Copy over tmux config file
mv tmux.conf ~/.tmux.conf

