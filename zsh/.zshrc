# -----------------------------------------------------
# Universal Zsh config (Kitty + Starship)
# -----------------------------------------------------

export EDITOR="vim"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export ZDOTDIR="$HOME/.config/zsh"   # makes ~/.config/zsh the logical Zsh home

# --- Oh My Zsh (no plugins here) ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=()
source $ZSH/oh-my-zsh.sh

# --- Load shared and OS-specific plugins/configs ---
source "$HOME/.config/zsh/shared.zsh"

case "$OSTYPE" in
  darwin*) [ -f "$HOME/.config/zsh/macos.zsh" ] && source "$HOME/.config/zsh/macos.zsh" ;;
  linux*)  [ -f "$HOME/.config/zsh/arch.zsh" ] && source "$HOME/.config/zsh/arch.zsh" ;;
esac

# --- Load environment variables ---
[ -f "$HOME/.config/zsh/env.zsh" ] && source "$HOME/.config/zsh/env.zsh"

# --- Starship prompt ---
eval "$(starship init zsh)"


# --- Fastfetch ---
#if command -v fastfetch &>/dev/null; then
#  fastfetch --config examples/13
#fi


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
