#!/usr/bin/env bash
FILE=~/.config/nvim/init.vim
if test -f "$FILE"; then
    echo "$FILE exists."
    read -p "Are you sure? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        # do dangerous stuff
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        cp ./.config/nvim/init.vim ~/.config/nvim/
    fi
fi
