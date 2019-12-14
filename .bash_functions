# Show all tput colors
show_tput() {
  for i in {0..255}; do
    printf "$(tput setab $i)   $i   $(tput sgr0)"
  done
  printf "\n\n\n"
  unset i
}

# Show solarized colors
show_solarized() {
  printf "\e[38;2;147;161;161mbase.    rgb(147,161,161).\e[0m"
  printf "    \e[48;2;147;161;161m                      \e[0m\n"
  printf "\e[38;2;181;137;0myellow.  rgb(181,137,0).\e[0m"
  printf "      \e[48;2;181;137;0m                      \e[0m\n"
  printf "\e[38;2;203;75;22morange.  rgb(203,75,22).\e[0m"
  printf "      \e[48;2;203;75;22m                      \e[0m\n"
  printf "\e[38;2;220;50;47mred.     rgb(220,50,47).\e[0m"
  printf "      \e[48;2;220;50;47m                      \e[0m\n"
  printf "\e[38;2;211;54;130mmagenta. rgb(211,54,130).\e[0m"
  printf "     \e[48;2;211;54;130m                      \e[0m\n"
  printf "\e[38;2;108;113;196mviolet.  rgb(108,113,196).\e[0m"
  printf "    \e[48;2;108;113;196m                      \e[0m\n"
  printf "\e[38;2;38;139;210mblue.    rgb(38,139,210).\e[0m"
  printf "     \e[48;2;38;139;210m                      \e[0m\n"
  printf "\e[38;2;42;161;152mcyan.    rgb(42,161,152).\e[0m"
  printf "     \e[48;2;42;161;152m                      \e[0m\n"
  printf "\e[38;2;133;153;0mgreen.   rgb(133,153,0).\e[0m"
  printf "      \e[48;2;133;153;0m                      \e[0m\n"
  printf "\n\n"
}

# Show only hidden files.
show_dot_files() {
  ls -a | grep '^\.'
}

# Pretty print JSON files
# Usage: Pipe JSON to pretty_json, i.e. `head -n 2 <json file> | pretty_json`
pretty_json() {
  while read line; do echo "$line" | python -m json.tool; done
}

# This is a temp shortcut. Do not persist to git repo.
# This command does not use the -f flag to hide the
# port forward in the background as is common from online.
# This keeps the port forward command actively running,
# preventing the user from forgetting the port forward.
#
# On the remote server, start jupyter:
# `jupyter lab --no-browser --port=20000`
#
# Takes in a parameter: remote server to port forward to.
# Can be an alias set in .ssh/config.
jupyter_port_forward() {
  ssh -N -L localhost:8888:localhost:20000 $1
}

# Shows port forwarding processes.
# Can stop port forward by: `kill <PID>`
show_port_forwarding() {
  ps aux | grep -i "ssh.*localhost" | grep -v "grep"
} 

