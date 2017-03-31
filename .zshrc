export PATH="/nfs/2014/e/emaniez/.brew/bin:/nfs/zfs-student-2/users/emaniez/.brew/bin:/Users/emaniez/project/weezexploitation/bin:$PATH"

# Completion
	autoload -U compinit
	compinit

# Git completion
	source ~/.zsh/git-completion.sh

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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
