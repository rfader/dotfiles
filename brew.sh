#!/bin/bash

# Get latest
brew update

# Upgrade preinstalled
brew upgrade

# GNU core utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

brew install bash
brew install bash-completion
brew install shellcheck

brew install gpg
brew install gpg-agent
brew install pinentry

brew install aircrack-ng
brew install reaver
brew install wireshark --with-qt5

brew install ack
brew install android-platform-tools
brew install awscli
brew install docker
brew install docker-compose
brew install docker-machine
brew install ffmpeg --with-libvpx
brew install flow
brew install git
brew install gnu-sed
brew install imagemagick --with-webp
brew install mobile-shell
brew install mongodb
brew install mysql
brew install neofetch
brew install node
brew install postgresql
brew install reattach-to-user-namespace # for tmux copy/paste
brew install redis
brew install spectacle
brew install sqlite
brew install the_silver_searcher
brew install thefuck
brew install tmux
brew install tree
brew install yarn
brew install vim --with-override-system-vi
brew install z

# Remove outdated
brew cleanup

