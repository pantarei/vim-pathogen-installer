#!/bin/bash

set -o xtrace

# Define variables.
BRANCH="master"

TMP_DIR=`mktemp -d`
if [ -z "$TMP_DIR" ]; then
    TMP_DIR=`mktemp -d -t ''`
fi

VIM_DIR=$HOME/.vim
VIM_BUNDLE_DIR=$VIM_DIR/bundle

# Backup current VIM configuration.
mkdir -p $TMP_DIR/orig
mv $HOME/.vim* $TMP_DIR/orig/

# Clone repo into temp folder.
cd $TMP_DIR
git clone --recursive --branch $BRANCH https://github.com/phpshift/vim-pathogen-installer.git
cp $TMP_DIR/vim-pathogen-installer/.vimrc $HOME/

# Fetch vim-pathogen.
git clone https://github.com/tpope/vim-pathogen.git $VIM_DIR

# Fetch latest bundles.
git clone http://git.drupal.org/project/vimrc.git $VIM_BUNDLE_DIR/vim-drupal
git clone https://github.com/StanAngeloff/php.vim $VIM_BUNDLE_DIR/vim-php
git clone https://github.com/elzr/vim-json.git $VIM_BUNDLE_DIR/vim-json
git clone https://github.com/evidens/vim-twig.git $VIM_BUNDLE_DIR/vim-twig
git clone https://github.com/groenewege/vim-less $VIM_BUNDLE_DIR/vim-less
git clone https://github.com/hail2u/vim-css3-syntax.git $VIM_BUNDLE_DIR/vim-css3-syntax
git clone https://github.com/othree/html5.vim.git $VIM_BUNDLE_DIR/vim-html5
git clone https://github.com/plasticboy/vim-markdown.git $VIM_BUNDLE_DIR/vim-markdown
git clone https://github.com/saltstack/salt-vim.git $VIM_BUNDLE_DIR/vim-salt
git clone https://github.com/scrooloose/syntastic.git $VIM_BUNDLE_DIR/vim-syntastic
git clone https://github.com/sickill/vim-pasta.git $VIM_BUNDLE_DIR/vim-pasta
git clone https://github.com/stephpy/vim-php-cs-fixer.git $VIM_BUNDLE_DIR/vim-php-cs-fixer
git clone https://github.com/stephpy/vim-yaml.git $VIM_BUNDLE_DIR/vim-yaml
git clone https://github.com/tokutake/twig-indent $VIM_BUNDLE_DIR/vim-twig-indent
git clone https://github.com/tpope/vim-git $VIM_BUNDLE_DIR/vim-git
git clone https://github.com/tpope/vim-sensible.git $VIM_BUNDLE_DIR/vim-sensible
