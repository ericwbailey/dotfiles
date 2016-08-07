## Better Bash history ########################################################

# http://www.shellhacks.com/en/7-Tips-Tuning-Command-Line-History-in-Bash
# http://blog.sanctum.geek.nz/better-bash-history/
# https://github.com/mrzool/bash-sensible

# Increase `.bash_history` filesize
export HISTFILESIZE=1000000

# Increase `.bash_history` commands stored
export HISTSIZE=1000000

# Store bash history immediately
export PROMPT_COMMAND="history -a"

# Prepend commands with a timestamp (`2016-03-06 @ 22:55:21 command`)
export HISTTIMEFORMAT="${black}%F @ %T${reset} "

# Don"t store duplicate commands
export HISTCONTROL="erasedups:ignoreboth"

# Don"t store the following commands
export HISTIGNORE="ls*:cl*:pwd:rm*:cd*:ps*:exit*"

# Store one command per line
shopt -s cmdhist

# Save multi-line commands as one command
shopt -s cmdhist

# Append commands to `.bash_history`
shopt -s histappend

# Enable incremental history search with up/down arrows (also Readline goodness)
# http://codeinthehole.com/writing/the-most-important-command-line-tip-incremental-history-searching-with-inputrc/
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

#[ -n "$PS1" ] && source ~/.bash_profile;

export NVM_DIR="/Users/eric/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
