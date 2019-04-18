#!/bin/bash

# https://powerline.readthedocs.io/en/master/installation/linux.html

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

if [ ! -d ~/.local/share/fonts ]; then
  mkdir -p ~/.local/share/fonts
fi

mv PowerlineSymbols.otf ~/.local/share/fonts/

fc-cache -vf ~/.local/share/fonts/

if [ ! -d ~/.config/fontconfig/conf.d/ ]; then
  mkdir -p ~/.config/fontconfig/conf.d/
fi

mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


# gee, it might not be useful

git clone https://github.com/powerline/fonts.git

./fonts/install.sh
