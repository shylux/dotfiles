#!/bin/sh
git clone https://github.com/olivierverdier/zsh-git-prompt.git /etc/zsh/zsh-git-prompt

SOURCE="source $PWD/zshrc"
if ( ! grep -q "$SOURCE" /etc/zsh/zshrc ); then
    echo $SOURCE >> /etc/zsh/zshrc
    echo "added zshrc"
fi

SOURCE="source $PWD/vimrc"
if ( ! grep -q "$SOURCE" /etc/vim/vimrc ); then
    echo $SOURCE >> /etc/vim/vimrc
    echo "added vimrc"
fi
