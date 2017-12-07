# Make backup dir
mkdir -p ~/backup-computer/home/
mkdir -p ~/backup-computer/home/.docker/
mkdir -p ~/backup-computer/home/.gradle/
mkdir -p ~/backup-computer/home/.tmux/
mkdir -p ~/backup-computer/Library/Application\ Support/
mkdir -p ~/backup-computer/root/Library/Preferences/SystemConfiguration/

cd ~/backup-computer

# Brew and npm
brew leaves                > brew-list.txt
brew cask list             > cask-list.txt
npm list -g --depth=0      > npm-g-list.txt
yarn global list --depth=0 > yarn-g-list.txt

# WiFi
cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/backup-computer/root/Library/Preferences/SystemConfiguration

# Backup
cp -Rp ~/.anyconnect ~/backup-computer/home/
cp -Rp ~/.bash_history ~/backup-computer/home/
cp -Rp ~/.code-push.config ~/backup-computer/home/
cp -Rp ~/.docker/config.json ~/backup-computer/home/.docker/
cp -Rp ~/.gradle/gradle.properties ~/backup-computer/home/.gradle/
cp -Rp ~/.zsh_history ~/backup-computer/home/

cp -Rp ~/.atom ~/backup-computer/home
cp -Rp ~/.aws ~/backup-computer/home
cp -Rp ~/.gnupg ~/backup-computer/home
cp -Rp ~/.oh-my-zsh ~/backup-computer/home
cp -Rp ~/.ssh ~/backup-computer/home
cp -Rp ~/.tmux/resurrect ~/backup-computer/home/.tmux/

cp -Rp ~/Library/Application\ Support/Sublime\ Text\ * ~/backup-computer/Library/Application\ Support
cp -Rp ~/Library/Keychains ~/backup-computer/Library
cp -Rp ~/Library/Services ~/backup-computer/Library # Automator
cp -Rp ~/Library/Fonts ~/backup-computer/Library

cp -Rp ~/Desktop ~/backup-computer
cp -Rp ~/Documents ~/backup-computer
cp -Rp ~/Downloads ~/backup-computer
cp -Rp ~/Movies ~/backup-computer
cp -Rp ~/Music ~/backup-computer
cp -Rp ~/Pictures ~/backup-computer

echo "Manual export data from:"
echo "- Xcode Account"
echo "- Sequel Pro"
echo "- Transmit"
echo ""
echo "If you transfer the data on a USB drive, remember to delete it again!"
