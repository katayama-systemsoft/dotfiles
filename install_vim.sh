#!/bin/bash
#
# file: install_vim
# desc: fetch github vim repository and
#       install Vim with below configure options
#           --prefix=$HOME
#           --enable-multibyte
#           --with-features=huge
#           --enable-python-interp
#           --enable-luainterp
#           --enable-perlinterp
#           --enable-pythoninterp
#           --enable-python3interp
#           --enable-rubyinterp
#           --with-python-config-dir=/usr/lib64/python2.6/config
#           --disable-gui
#           --enable-fontset
#

echo "Install VIM from github online repository vim/vim."
if [ -d "$HOME/src" ]; then
    cd "$HOME/src"
else
    echo "Not found [ $HOME/src ]"
    exit 1
fi
pwd

git clone https://github.com/vim/vim.git &&
cd vim
./configure \
    --prefix=$HOME \
    --enable-multibyte \
    --with-features=huge \
    --enable-python-interp \
    --enable-luainterp \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-python3interp \
    --with-python-config-dir=/usr/lib64/python2.6/config \
    --enable-rubyinterp \
    --disable-gui \
    --enable-fontset \
    &&

make; make install

echo "please check your PATH ordar."
echo "recommended settings:"
echo "   zsh; echo \"PATH=\$HOME/bin:\$PATH\" >> ~/.zshrc"
echo "  bash; echo \"PATH=\$HOME/bin:\$PATH\" >> ~/.bashrc"
echo "done."