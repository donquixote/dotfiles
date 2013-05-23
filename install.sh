#! /usr/bin/env bash

cd "$(dirname "$0")"

# Backup whatever's there
mkdir -p ~/.dotbackups/

rm .[a-z]*~
for dot in .[a-z]*; do
    if [ "$dot" != ".git" ]; then
	mv ~/$dot ~/.dotbackups/
	ln -s ~/dotfiles/$dot ~
    fi
done

cd
ln -s "$(dirname "$0")"/bin
