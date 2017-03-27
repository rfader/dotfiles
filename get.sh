#!/bin/bash -eux

# install git
os_name="$(uname -s)"
if [ "$os_name" == "Linux" ]; then
  # debian & ubuntu
  which apt-get && sudo apt-get update && sudo apt-get install git
fi


mkdir ~/.dotfiles
git clone https://github.com/rfader/dotfiles ~/.dotfiles
cd ~/.dotfiles
# ./update.sh
