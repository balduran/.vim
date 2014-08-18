#!/bin/bash
VIMHOME=$HOME/.vim

cd "$VIMHOME"
git submodule update --init

[ -L $HOME/.vimrc ] || ln -s $HOME/.vim/vimrc $HOME/.vimrc 