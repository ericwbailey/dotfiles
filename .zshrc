# Imports #####################################################################

## Autoloads
autoload -Uz compinit && compinit     # Initialize zsh completion
autoload bashcompinit && bashcompinit # Load bashcompinit for some old bash completions

## My stuff
source ~/.zsh/.path
source ~/.zsh/.aliases
source ~/.zsh/.functions

## Antigen
source ~/.zsh/antigen.zsh

antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle dircycle
antigen bundle git
antigen bundle heroku
antigen bundle nocttuam/autodotenv
antigen bundle npm
antigen bundle sudo
antigen bundle Tarrasch/zsh-command-not-found
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zpm-zsh/colorize
antigen bundle zpm-zsh/colors
antigen bundle zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

plugins=(history-substring-search)

# Configuration ###############################################################

# http://zsh.sourceforge.net/Doc/Release/Options.html
setopt ALWAYS_TO_END        # Move cursor to the end of a word when completed
setopt AUTO_CD              # Try cd if the command isn't understood
setopt AUTO_MENU            # Use menu completion after the second consecutive request for completion
setopt CORRECT              # Enable correction
setopt CORRECT_ALL          # Enable correction
setopt INTERACTIVE_COMMENTS # Allow interactive shell comments
unsetopt CASE_GLOB          # Case-insensitive globbing

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' # Case-insensitive path completion
zstyle ':completion:*' list-suffixes  # Partial completion suggestions
zstyle ':completion:*' expand prefix suffix


# Prompt ######################################################################

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/on %F{blue}\1%f/'
}

setopt PROMPT_SUBST
export PROMPT="
%F{cyan}%n%f in %F{magenta}%M%f $(parse_git_branch)
%F{yellow}%~%f
: "


# History #####################################################################

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # Save history
HISTORY_IGNORE='(cd*|cl*|ls*|pwd)'      # Ignore common commands
SAVEHIST=500000                         # Cap history at 500,000 entries
setopt EXTENDED_HISTORY                 # Add timestamp
setopt SHARE_HISTORY                    # Share history between sessions
setopt INC_APPEND_HISTORY               # Add commands when executed, not at shell exit
setopt HIST_EXPIRE_DUPS_FIRST           # Expire duplicates first
setopt HIST_IGNORE_DUPS                 # Don't store duplicates
setopt HIST_FIND_NO_DUPS                # Ignore duplicates when searching through history
setopt HIST_REDUCE_BLANKS               # Remove blank lines from history
setopt HIST_BEEP                        # Beep when accessing a non-existent history entry

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end


eval "$(rbenv init -)"
