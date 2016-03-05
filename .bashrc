## Better Bash history ########################################################

# http://www.shellhacks.com/en/7-Tips-Tuning-Command-Line-History-in-Bash
# http://blog.sanctum.geek.nz/better-bash-history/

# Increase `.bash_history` filesize
export HISTFILESIZE=1000000

# Increase `.bash_history` commands stored
export HISTSIZE=1000000

# Store bash history immediately
export PROMPT_COMMAND="history -a"

# Prepend commands with a timestamp (`Jun 08 16:31:06 command`)
export HISTTIMEFORMAT="%h %d %H:%M:%S "

# Don"t store duplicate commands
export HISTCONTROL=ignoredups

# Don"t store the following commands
export HISTIGNORE="ls*:cl*:pwd:rm*:cd*:ps*:exit*"

# Store one command per line
shopt -s cmdhist

# Append commands to `.bash_history`
shopt -s histappend

# Adds autocomplete for itermocil
complete -W "$(itermocil --list)" itermocil

#[ -n "$PS1" ] && source ~/.bash_profile;
