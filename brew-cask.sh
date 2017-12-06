#!/bin/bash

# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

brew update

# brew install caskroom/cask/brew-cask
brew tap caskroom/versions # contains alternate versions of Casks (e.g. betas, nightly releases, old versions)
brew tap caskroom/fonts # contains Casks that install fonts
brew tap caskroom/drivers # contains Casks that install drivers for various devices

# brew cask install spectacle
brew cask install 1password
# brew cask install android-studio
brew cask install caffeine
brew cask install divvy
brew cask install dropbox
brew cask install graphiql
brew cask install imagealpha
brew cask install imageoptim
brew cask install mysqlworkbench
brew cask install sequel-pro
brew cask install pgadmin4
brew cask install psequel
brew cask install react-native-debugger
brew cask install plex-media-player
brew cask install postman
brew cask install sketch
brew cask install skype
brew cask install slack
brew cask install sonos
brew cask install spotify
brew cask install sublime-text
brew cask install transmit4
brew cask install virtualbox
brew cask install vlc

brew cask install google-chrome
# brew cask install chromium
brew cask install firefox
brew cask install torbrowser
brew cask install opera

brew cask install android-platform-tools
brew cask install gpg-suite
brew cask install handbrake
brew cask install charles
brew cask install disk-inventory-x
brew cask install docker
brew cask install licecap
# brew cask install transmission
brew cask install the-unarchiver
brew cask install crashplan

brew cask install font-source-code-pro

brew cask cleanup
