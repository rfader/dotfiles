# Make backup dir
mkdir -p ~/backup-computer/home
cd ~/backup-computer

# Brew and npm
brew leaves > brew-list.txt
brew cask list > cask-list.txt
npm list -g --depth=0 > npm-g-list.txt

# WiFi
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/backup-computer

# Backup
cp ~/.anyconnect ~/backup-computer/home
cp ~/.code-push.config ~/backup-computer/home
cp ~/.gitconfig ~/backup-computer/home

cp -R ~/.atom ~/backup-computer/home
cp -R ~/.aws ~/backup-computer/home
cp -R ~/.docker ~/backup-computer/home
cp -R ~/.gnupg ~/backup-computer/home
cp -R ~/.ssh ~/backup-computer/home 

cp -R ~/Desktop ~/backup-computer
cp -R ~/Documents ~/backup-computer
cp -R ~/Downloads ~/backup-computer

cp -R ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ~/backup-computer
cp -R ~/Library/Services ~/backup-computer # Automator

cp -R ~/Movies ~/backup-computer
cp -R ~/Music ~/backup-computer
cp -R ~/Pictures ~/backup-computer

