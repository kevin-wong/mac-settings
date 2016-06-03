# Source .bashrc, if exists
# https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Add flags to default `ls`. -G flag enables `ls` colors
alias ls='ls -lhFG'

# Customize `ls` colors
# BSD LSCOLORS at: http://geoff.greer.fm/lscolors/
# Color descriptions at: http://www.cyberciti.biz/tips/freebsd-how-to-enable-colorized-ls-output.html
# export LSCOLORS=cxfxhxbxcxagadacacgxGx

# Settings for `history` 
# http://www.thegeekstuff.com/2008/08/15-examples-to-master-linux-command-line-history/
export HISTCONTROL=ignoredups         # ignore duplicates
export HISTTIMEFORMAT='%F %T '        # format history to include timestamp
export HISTIGNORE="pwd:ls:history:"   # list of commands to ignore

# Command to view all 256 tput colors with their associated numeric values. The number is limited by mod 256. 
# for i in {0..255}; do tput setab $i; echo -n "  $i  "; done; tput sgr0; echo

# Sample tput's colors on launch
# for i in `seq 1 $(tput cols)`; do tput setab $i; echo -n " "; done; tput sgr0; echo

for i in {0..255}; do tput setab $i; echo -n "     "; done; tput sgr0; echo; unset i

# echo "`tput setaf 5` ⚉`tput sgr0`"
# echo "`tput setaf 5`╭☗╮`tput sgr0`"

# Colors: http://wiki.bash-hackers.org/scripting/terminalcodes
prompt_color_red=$(tput setaf 160)
prompt_color_green=$(tput setaf 40)
prompt_color_blue=$(tput setaf 39)
prompt_color_cyan=$(tput setaf 45)
prompt_color_yellow=$(tput setaf 226)
prompt_color_magenta=$(tput setaf 199)
prompt_color_orange=$(tput setaf 208)
prompt_color_reset=$(tput sgr0)

# Use PROMPT_COMMAND to change PS1 so git info can be displayed when in repo directory
# Display options: http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
# Git code from: http://www.terminally-incoherent.com/blog/2013/01/14/whats-in-your-bash-prompt/
function __prompt_command() {	    	
  local EXIT="$?" # exit status to determine color of history number    
  PS1=""

  if [ $EXIT -eq 0 ]; then 
    PS1+="\[$prompt_color_green\][\!]\[$prompt_color_reset\] "; 
  else 
    PS1+="\[$prompt_color_red\][\!]\[$prompt_color_reset\] "; 
  fi

  # NOTE: Wrap tput commands inside brackets: \[ \] so it doesn't overlap text and mess up the display.  
  # http://askubuntu.com/questions/111840/ps1-problem-messing-up-cli
  PS1+="\[$prompt_color_orange\]\d \A\[$prompt_color_reset\] "
  PS1+="\[$prompt_color_magenta\]\u\[$prompt_color_reset\]"
  PS1+="\[$prompt_color_green\]:\[$prompt_color_reset\]"
  PS1+="\[$prompt_color_blue\]\w\[$prompt_color_reset\]"
  
  # Display when in git repo
  local git_status="`git status -unormal 2>&1`"
  if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
    if [[ "$git_status" =~ nothing\ to\ commit ]]; then
      local git_color=$prompt_color_green
    elif [[ "$git_status" =~ Untracked\ files: ]]; then
      local git_color=$prompt_color_red
    elif [[ "$git_status" =~ Changes\ not\ staged ]]; then
      local git_color=$prompt_color_red        
    else
      local git_color=$prompt_color_yellow
    fi
    if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
      local git_branch=${BASH_REMATCH[1]}
    else # Detached HEAD
      local git_branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null || echo HEAD`)"
    fi
    PS1+=" | \[$git_color\][$git_branch]\[$prompt_color_reset\]"
  fi
  PS1+="\n\[$prompt_color_cyan\]⥤\[$prompt_color_reset\] "
}
PROMPT_COMMAND=__prompt_command

