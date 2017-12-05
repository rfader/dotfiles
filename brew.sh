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
brew install nmap
brew install reaver
brew install wireshark --with-qt5

brew install ack
brew install android-platform-tools
brew install awscli
brew install cocoapods
brew install docker
brew install docker-compose
brew install docker-machine
brew install ffmpeg --with-libvpx
brew install flow
brew install git
brew install htop
brew install imagemagick --with-webp
brew install jq
brew install lftp
brew install mongodb
brew install mosh
brew install mysql
brew install neofetch
brew install node
brew install postgresql
brew install ranger
brew install redis
brew install rename
brew install getsentry/tools/sentry-cli
# brew install spectacle
brew install sqlite
brew install the_silver_searcher
brew install thefuck
brew install tmux
brew install tree
brew install vim --with-override-system-vi
brew install watchman
brew install wget
brew install yarn
brew install z
brew install zsh

# Remove outdated
brew cleanup

