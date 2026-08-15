# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hgfs/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH="$HOME/.local/bin:$PATH"
eval "$(iris init zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
if command -v iris >/dev/null 2>&1; then
    alias i="iris"
fi
alias dir="eza --icons"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

eval "$(starship init zsh)"
