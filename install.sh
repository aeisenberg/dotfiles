#!/bin/bash

INSTALL_LOG=$HOME/dotfiles_install.log

echo "Loading dotfiles. See $INSTALL_LOG"

exec > >(tee -i $INSTALL_LOG)
exec 2>&1
set -x

ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/vim $HOME/.vim
ln -s $(pwd)/gitconfig $HOME/.gitconfig
ln -s $(pwd)/gitignore_global $HOME/.gitignore_global

$(pwd)/bashrc_extras

vim -Es -u $HOME/.vimrc -c "PlugInstall | qa"
