#!/bin/bash
#USE THIS FILE WITH CARE
for file in ` ls -a ~/dotfiles | grep -v '^\.\.$' |grep -v '^\.$' | grep -v '^README$' |grep -v '^compiz-settings.profile$' |grep -v '^gnome-terminal-conf.xml$' |grep -v '^bootstrap.sh$'` |grep -v '^\.git'
do
    rm $HOME/$file
	ln -s "$HOME/dotfiles/$file" "$HOME/$file"
done
