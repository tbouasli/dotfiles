if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin/scripts"
export PATH="$PATH:/usr/local/go/bin"
export PATH=$PATH:"$HOME/.spicetify"
export PATH="$HOME/go/bin:$PATH"


# ZSH Theme Config
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting aws docker docker-compose nvm rust fzf)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Aliases
EDITOR="nvim"
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Zoxide
eval "$(zoxide init zsh)"

# PNPM 
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Deno
. "$HOME/.deno/env"

# Keychain
eval `keychain --eval`

# Thefuck
eval $(thefuck --alias)

# Keybindings

bindkey -s '^f' 'tmux-sessionizer\n'
bindkey -s '^g' 'tmux-sessionizer ~/.dotfiles\n'
