# backup and symlink all dotfiles

# Create backup dir it it does not exist
mkdir -p .backupfiles

DATE=$(date +%Y%m%d-%H%M%S)

backupAndLink() {
#  echo "Backup and link $1"
  if [[ -f $1 && ! -L $1 ]]; then # check if file exists and is not a symlink
    mv -nv ~/$1 ~/.backupfiles/$1_$DATE
  fi
  if [ -d $1 ]; then
    mv -nv ~/$1 ~/.backupfiles/$1_$DATE
  fi
  ln -fsv ~/.dotfiles/$1 ~/$1
}

backupAndLink ".bash_profile"
backupAndLink ".eslintrc.js"
backupAndLink ".gitconfig"
backupAndLink ".gitignore"
backupAndLink ".hushlogin"
backupAndLink ".inputrc"
backupAndLink ".tmux"
backupAndLink ".tmux.conf"
backupAndLink ".vimrc"
backupAndLink ".vim"
backupAndLink ".zshrc"

ln -fsv ~/.dotfiles/.ssh.config ~/.ssh/config

echo "Done!"

