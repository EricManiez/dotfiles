# !/bin/zsh
export JAVA_HOME=`/usr/libexec/java_home -v 11.0.9.1`
export PATH=".:/Users/emaniez/.gem/ruby/2.6.0/bin:/usr/local/sbin:/opt/apache-maven/bin:$PATH"
export LANG=en_US.UTF-8

# https://github.com/pyenv/pyenv
if [ -z "$INTELLIJ_ENVIRONMENT_READER" ]; then
  alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
  eval "$(pyenv init -)"
fi

# Completion
autoload -U compinit
compinit
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
fi

# Git completion
fpath=(~/.zsh $fpath)

# Command correction
setopt correctall
 
# Aliases
source ~/.zsh/aliases

# Command line shortcuts
bindkey "^U" backward-kill-line
bindkey "^X\\x7f" backward-kill-line
bindkey "^X^_" redo

# Auto-rehash of binaries
zstyle ':completion:*' rehash true

# Prompt modifiers
autoload -U promptinit
autoload -U colors && colors
promptinit
prompt clint
# Prompt : "user@comp | pwd > "
PROMPT='%F{green}%B%n%F{white} | %f%F{yellow}%~%b%F{red} > %f'
# Right Prompt : "(git)-[branch]-"
RPROMPT='%F{cyan}%B%(2v.%2v.)%f%b'

# OPAM configuration
. /Users/emaniez/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Auto-suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

 # add autocomplete permanently to your zsh shell
if [ /usr/local/bin/kubectl ]; then
  source <(kubectl completion zsh)
fi

eval "$(direnv hook zsh)"

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               # How many lines of history to keep in memory
HISTFILE=~/.zsh_history     # Where to save history to disk
SAVEHIST=5000               # Number of history entries to save to disk
HISTDUP=erase               # Erase duplicates in the history file
setopt    appendhistory     # Append history to the history file (no overwriting)
setopt    sharehistory      # Share history across terminals
setopt    incappendhistory  # Immediately append to the history file, not just when a term is killed
