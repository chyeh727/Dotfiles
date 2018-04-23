#!/bin/bash

##############################################################################
# setup.sh
# Setup all dotfiles from github and move old files to dotfiles_old
##############################################################################

curl -L http://install.ohmyz.sh | sh
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
cd

dir=~/Dotfiles
olddir=~/dotfiles_old
rcfiles="vimrc tmux.conf zshrc bash_profile"

# Creating dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "..done"

for file in $rcfiles; do
	echo "Moving old dotfile to $olddir"
  mv ~/.$file $olddir
	echo "Creating symlink to $file in home dir"
	ln -s $dir/$file ~/.$file
done

# Vim setup
echo "Moving old .vim to $olddir"
[ -d "~/.vim" ] && mv ~/.vim $olddir
cp -r $dir/vim ~/.vim

# echo "Add some useful"
#/bin/zsh
tmux

#defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
#defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
