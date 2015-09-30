#!/bin/bash
############################
# bootstrap.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables
dir=~/dotfiles
files="bashrc aliases bash_profile bash_prompt curlrc editorconfig exports functions gdbinit git gitconfig gitignore hgignore hushlogin inputrc screenrc vimrc vim wgetrc"    # list of files/folders to symlink in homedir

# create symlinks 
for file in $files; do
    echo "Creating symlink from $dir/.$file to ~/.$file in home directory."
    ln -s $dir/.$file ~/.$file
done