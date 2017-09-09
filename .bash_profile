# Enables ctrl-s
# stty -ixon

# use vim as default editor
export EDITOR="vim"

# use xterm by default
export TERM=xterm-256color

# use less for man, wont clear after quit
export MANPAGER="less -X"

# change colors of less man pager
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;208m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;111m'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function jobs_count {
    cnt=$(jobs -l | wc -l | sed 's/ //g')
    if [ $cnt -gt 0 ]; then
        echo -ne "[$cnt]"
    fi
}

# Text Colors - Regular
CYAN="\e[0;36m"
GREEN="\e[0;32m"
RED="\e[0;31m"
WHITE="\e[0;37m"
RESET="\e[0m"

# Text Colors - Bold
YELLOW="\e[1;33m"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1="$CYAN\u$RESET @ $YELLOW\w$RESET\$(parse_git_branch) $RED\$(jobs_count)$RESET\n\$ "
export PS1="$CYAN\u$RESET @ $YELLOW\w$RESET\$(parse_git_branch)\n\$ " # Removed jobs_counts as it was messed up by z


# Prevent duplicates in history
#export HISTCONTROL="ignoreboth:erasedups"
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=$HISTSIZE
# type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear" # ignore some commands
# Save multi-line commands as one command
#shopt -s cmdhist
#shopt -s histappend

# Save and reload the history after each command finishes
##export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


#
# Install
#

# z (messes up jobs_count)
zpath="$(brew --prefix)/etc/profile.d/z.sh"
[ -s $zpath ] && source $zpath

# fuck
if which thefuck > /dev/null; then
    eval "$(thefuck --alias)"
fi;

# bash completion
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# homebrew completion
if which brew > /dev/null; then
    source "$(brew --prefix)/etc/bash_completion.d/brew"
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type __git_complete &> /dev/null; then
    __git_complete g __git_main
fi;


#
# Alias
#

alias ll="ls -GFhpl"
alias lla="ll -a"
alias ls="ls -Gp"
alias ..="cd .."
alias cd..="cd .."
alias fs="stat -f '%z bytes'"
alias df="df -h"
alias mv="mv -v"
alias rm="rm -i -v"
alias cp="cp -v"
alias RELOADBASH=". ~/.bash_profile"
alias tmux="TERM=screen-256color tmux"
alias g="git"
alias v="vim"
alias j="jobs"
alias server="python -m SimpleHTTPServer"

alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"

# Tmux
alias tat="tmux attach-session -t"
alias tls="tmux ls"

alias grep="grep --color=auto"

alias week="date +%V"

alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend" # lock mac
alias starwars="telnet towel.blinkenlights.nl"

# pbcopy on linux
# alias pbcopy="xclip -selection clipboard"
# alias pbpaste="xclip -selection clipboard -o"

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Image width
imgw() {
    echo $(sips -g pixelWidth "$1" | grep -oE "[[:digit:]]{1,}$")
}

# Image height
imgh() {
    echo $(sips -g pixelHeight "$1" | grep -oE "[[:digit:]]{1,}$")
}

# Copy with progress
cp_p () {
    rsync -WavP --human-readable --progress $1 $2
}


# Fix lang
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export MM_CHARSET=utf8
export LC_COLLATE="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"


#
# cd
#

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

