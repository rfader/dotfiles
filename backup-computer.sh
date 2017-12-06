# Make backup dir
mkdir -p ~/backup-computer/home/
mkdir -p ~/backup-computer/Library/Application\ Support/
mkdir -p ~/backup-computer/root/Library/Preferences/SystemConfiguration

cd ~/backup-computer

# Brew and npm
brew leaves                > brew-list.txt
brew cask list             > cask-list.txt
npm list -g --depth=0      > npm-g-list.txt
yarn global list --depth=0 > yarn-g-list.txt

# WiFi
cp -Rp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/backup-computer/root/Library/Preferences/SystemConfiguration

# Backup
cp -Rp ~/.anyconnect ~/backup-computer/home
cp -Rp ~/.bash_history ~/backup-computer/home
cp -Rp ~/.code-push.config ~/backup-computer/home
cp -Rp ~/.gitconfig ~/backup-computer/home
cp -Rp ~/.gradle/gradle.properties ~/backup-computer/home/.gradle
cp -Rp ~/.zsh_history ~/backup-computer/home

cp -Rp ~/.atom ~/backup-computer/home
cp -Rp ~/.aws ~/backup-computer/home
cp -Rp ~/.docker ~/backup-computer/home
cp -Rp ~/.gnupg ~/backup-computer/home
cp -Rp ~/.oh-my-zsh ~/backup-computer/home
cp -Rp ~/.ssh ~/backup-computer/home

cp -Rp ~/Library/Application\ Support/Sublime\ Text\ * ~/backup-computer/Library/Application\ Support
cp -Rp ~/Library/Services ~/backup-computer/Library # Automator
cp -Rp ~/Library/Fonts ~/backup-computer/Library

cp -Rp ~/Desktop ~/backup-computer
cp -Rp ~/Documents ~/backup-computer
cp -Rp ~/Downloads ~/backup-computer
cp -Rp ~/Movies ~/backup-computer
cp -Rp ~/Music ~/backup-computer
cp -Rp ~/Pictures ~/backup-computer
