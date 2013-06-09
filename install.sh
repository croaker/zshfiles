#!/bin/bash
ZSH_FILES=$HOME/.zshfiles

function ln_with_backup () {
  SRC=$1
  TARGET=$2

  if [ -s $TARGET ]; then
    echo "$TARGET is already linked! Skipping..."
    return
  fi

  if [ -e $TARGET ]; then
    echo "$TARGET exists! Backing up.."

    mv $TARGET $TARGET.$(date +%s)
  fi

  mkdir -p $(dirname $TARGET)
  ln -s $SRC $TARGET
}

echo "Linking dotfiles"
for DOTFILE in zshenv zshrc
do
  ln_with_backup $ZSH_FILES/$DOTFILE $HOME/.$DOTFILE
done

echo "Initializing and updating modules"
cd $ZSH_FILES && git submodule update --init
