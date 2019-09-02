export PATH="/usr/local/sbin:$PATH"
export LANG=en_US.UTF-8

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
source ~/.zsh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi # add autocomplete permanently to your zsh shell
export PATH="/usr/local/sbin:$PATH"
