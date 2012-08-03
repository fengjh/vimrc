#! /bin/bash

# Bundle and scripts
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp .vimrc .gvimrc ~/
vim +BundleInstall +qa
cd ~/.vim/bundle/Command-T/ruby/command-t/; rvm system do ruby extconf.rb; make; cd -

# snipmate-snippets
git submodule init; git submodule update
mkdir snipmate-snippets/
cd snipmate-snippets/; rake deploy_local; cd -
