export PATH="/Users/emaniez/project/weezexploitation/bin:$PATH"

# Completion
	autoload -U compinit
	compinit

# Git completion
	source ~/.zsh/git-completion.sh

# Command correction
	setopt correctall
 
# Aliases
	source ~/.zsh/aliases

# Auto-rehash of binaries
	zstyle ':completion:*' rehash true

# Prompt modifiers
	autoload -U promptinit
	autoload -U colors && colors
	promptinit
	prompt clint
# Prompt : "user@comp | pwd > "
	PROMPT='%F{green}%B%n@%m%F{white} | %f%F{yellow}%~%b%F{red} > %f'
# Right Prompt : "(git)-[branch]-"
	RPROMPT='%F{cyan}%B%(2v.%2v.)%f%b'
