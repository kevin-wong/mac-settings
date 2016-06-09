# Adapted from: https://github.com/mathiasbynens/dotfiles/blob/master/.aliases

# Navigation
alias ..="cd ..; ls"
alias ...="cd ../..; ls"
alias ....="cd ../../..; ls"
alias .....="cd ../../../..; ls"

# Shortcuts
alias h="history"
alias g="git"
alias gs="git status"
alias grep="grep --color=auto"
alias v="vim"

alias ls="ls -FG"
alias ll="ls -lhFG"
alias la="ls -ahFG"s
alias lla="ls -lahFG"
alias lt="ls -lahtFG" # sort by time, non-ascending order

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

alias show_tput='for i in {0..255}; do tput setab $i; echo -n "  $i  "; done; tput sgr0; echo'
