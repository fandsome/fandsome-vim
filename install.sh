#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR
CURRENT_DIR=`pwd`

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

echo "Step1: backing up current vim config"
today=`date +%Y%m%d`
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -e $i ] && [ ! -L $i ] && mv $i $i.$today; done
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vimrc.bundles; do [ -L $i ] && unlink $i ; done


echo "Step2: setting up symlinks"
lnif $CURRENT_DIR/vimrc $HOME/.vimrc
lnif $CURRENT_DIR/vimrc.bundles $HOME/.vimrc.bundles
lnif "$CURRENT_DIR/" "$HOME/.vim"

echo "Step3: install vundle"
echo "Installing Vundle"
if [ ! -d $CURRENT_DIR/bundle/vundle ]
then
    git clone https://github.com/gmarik/vundle.git $CURRENT_DIR/bundle/vundle
fi

echo "Step4: update/install plugins using Vundle"
system_shell=$SHELL
export SHELL="/bin/sh"
#vim -u $HOME/.vimrc.bundles +BundleInstall! +BundleClean +qall
vim -u $HOME/.vimrc.bundles +BundleInstall! +qall
export SHELL=$system_shell

echo "Step5: install powerline-fonts"
/bin/sh $HOME/.vim/bundle/powerline-fonts/install.sh

#vim bk and undo dir
if [ ! -d /tmp/vimbk ]
then
    mkdir -p /tmp/vimbk
fi

if [ ! -d /tmp/vimundo ]
then
    mkdir -p /tmp/vimundo
fi

echo "Install Done!"
