#!/bin/bash
############################
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
dir=~/.dotfiles
files="bashrc aliases bash_profile bash_prompt curlrc editorconfig exports functions gdbinit gitconfig gitignore hgignore hushlogin inputrc screenrc vimrc vim wgetrc"    # list of files/folders to symlink in homedir

# create symlinks 
for file in $files; do
    ln -s $dir/.$file ~/.$file
done