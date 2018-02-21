!/bin/bash
# vim gets installed first? At least Vunlde repo will first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# With Vundle installed, can go ahead and move dotfiles moved
cp vimrc_archie
# will have to do something about the fonts for the system and the terinal as a whole, will have to get some powerline fonts installed, do it here

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

# Assuming I would have already installed my default window manager, so this will only copy the config fileover
# and not install i3
# Will use archie box(actual desktop) file
mv archie_box_i3_config ~/.config/i3/config

# Copying xninttc file and Xresources for urxvt 
cp .Xresources ~/.Xresources
xrdb ~/.Xresources
