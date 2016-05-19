export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/usr/local/apache-maven/apache-maven-3.3.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
if [ -f ~/.bashrc ]; then  # source bashrc, if exists
	   source ~/.bashrc
fi

# Enable ls colors
# Customize at: http://geoff.greer.fm/lscolors/
# Color descriptions at: http://www.cyberciti.biz/tips/freebsd-how-to-enable-colorized-ls-output.html
alias ls='ls -lGFh'
export LSCOLORS=cxfxhxbxcxagadacacgxGx

# Change bash prompt
# http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
export PS1="-->[\d \t \u:\w]-> "

# http://www.thegeekstuff.com/2008/08/15-examples-to-master-linux-command-line-history/
export HISTCONTROL=ignoredups         # ignore duplicates
export HISTTIMEFORMAT='%F %T '        # format history to include timestamp
export HISTIGNORE="pwd:ls:history:"   # list of commands to ignore
