# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias c="clear"
alias h="history"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gl="git log --graph --pretty=format:'%Cgreen%h%Creset -%C(blue)%d%Creset %s %Cgreen(%cr)%Creset'"
alias grep="grep --color=auto"
alias v="vim"
alias functions="declare -f | grep '()'"

alias ls="ls -FG"
alias ll="ls -lhFG"
alias la="ls -ahFG"
alias lla="ls -lahFG"
alias lt="ls -lahtFG" # sort by most recently modified

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
