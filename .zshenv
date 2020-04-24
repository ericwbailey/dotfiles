export EDITOR="code"

# Homebrew
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv # Use Homebrew's directories rather than ~/.rbenv add to your profile:

# nvm
export NVM_DIR="/Users/eric/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
