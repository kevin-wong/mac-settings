if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
if [ -f ~/.bash_exports ]; then . ~/.bash_exports; fi
if [ -f ~/.bash_functions ]; then . ~/.bash_functions; fi
if [ -f ~/.bash_prompt ]; then . ~/.bash_prompt; fi
if [ -f ~/.bash_readline_colors ]; then . ~/.bash_readline_colors; fi

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`   
shopt -s cdspell;

# ssh hostname tab completion, according to ~/.ssh/config
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
