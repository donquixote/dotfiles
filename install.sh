#! /usr/bin/env bash

cd "$(dirname "$0")"

# Backup whatever's there
mkdir -p ~/.dotbackups/

rm -f .[a-z]*~
for dot in .[a-z]*; do
    if [ "$dot" != ".git" ]; then
	mv ~/$dot ~/.dotbackups/
	ln -s ~/dotfiles/$dot ~
    fi
done

cd
if [ ! -e ~/bin ]; then
    ln -s "$(dirname "$0")"/dotfiles/bin
fi