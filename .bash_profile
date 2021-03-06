## Dotfiles ###################################################################

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.bash/.{path,colors,bash_prompt,bashrc,aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


## General Options ############################################################

# Use Micro as the default editor: https://github.com/zyedidia/micro
export EDITOR=/usr/local/Cellar/micro/

# Prevent file overwrite on stdout redirection
set -o noclobber

# Update window size after every command
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


## Bash 4 features (enable when possible) #####################################

# Automatically trim long paths in the prompt
PROMPT_DIRTRIM=4

# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
    shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;


## Rbenv ######################################################################

# Enable rbenv shims and autocompletion add to your profile:
# https://robots.thoughtbot.com/using-rbenv-to-manage-rubies-and-gems
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$(rbenv init -)"


## pipenv #####################################################################

# Enable shell completion
# https://github.com/pypa/pipenv
eval "$(pipenv --completion)"


## Autojump ###################################################################
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


## direnv #####################################################################

# https://github.com/direnv/direnv
eval "$(direnv hook bash)"


## mcfly ######################################################################

# https://github.com/cantino/mcfly
if [[ -f "$(brew --prefix)/opt/mcfly/mcfly.bash" ]]; then
  source "$(brew --prefix)/opt/mcfly/mcfly.bash"
fi
