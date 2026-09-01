# =========================
# Navigation / Shell
# =========================
alias c='clear'
alias ll='ls -lah'
alias la='ls -A'
alias l='eza -lah --icons'
alias cd='z'

alias rel="source ~/.zshrc"
alias ze='nvim ~/.zshrc'
alias za='nvim ~/.config/zsh/alias.zsh'
alias n='nvim'

# =========================
# Git
# =========================
alias gs='git status'
alias gst='git status'
alias gss='git status --short'
alias gsb='git status --short --branch'

alias ga='git add'
alias gaa='git add --all'

alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -am'

alias gacm='git add . && git commit -m'

alias gr='git restore --staged .'

alias gco='git checkout'
alias gsw='git switch'
alias gswc='git switch -c'

alias gcl='git clone'

alias gp='git push'
alias gpl='git pull'
alias gpf='git push --force-with-lease'

alias gd='git diff'
alias gl='git log --oneline --graph --decorate --all'

# =========================
# Dev / Tools
# =========================
alias vim='nvim'
alias setup='npm run setup'
alias up='uv pip install'
alias ss='source .venv/bin/activate'
alias ff='DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib fastfetch'
alias btop='~/projects/btop-macos-gpu/bin/btop'
alias fah='sudo spank --min-amplitude 0.15 --custom ~/Downloads/fah'
alias mo='sudo spank --min-amplitude 0.15 --sexy'

# =========================
# SSH / Infra
# =========================
alias archit='ssh xerneas@archy'
alias jarch='ssh -L 8888:localhost:8888 xerneas@archy'
alias nuke='ssh software@100.64.0.58'
alias bake='ssh xerneas@cake'
alias win='ssh senth@brick'
alias wsl='ssh -t senth@aakashdesktop "wsl.exe"'
alias hscale='ssh root@headscale'
alias bum='ssh xerneas@jetson'
alias desk='ssh software@100.64.0.25'
alias wm='ssh admin@wimspi'
alias blaze='ssh xerneas@blazepi'
alias bit='ssh software@100.64.0.58'
alias butata='ssh software@100.64.0.58'
alias nas='ssh xerneas@ugreen-nas'
alias claw='ssh root@openclaw-1'

# =========================
# Tmux
# =========================
alias ta='tmux attach'
alias tm='tmux'
alias tmks='tmux kill-server'
alias tmkss='tmux kill-session -t'

# =========================
# Tailscale
# =========================
alias ts='tailscale status'
alias tr='tailscale switch robotics-infra'
alias tx='tailscale switch xerneas'
alias tp='tailscale switch --list'

# =========================
# Archy remote (Jupyter env)
# =========================
# Run any command on archy with full interactive zsh env (loads aliases/functions).
arch() {
  ssh -t archy "zsh -ic \"$*\""
}

alias jadd='arch jadd'        # usage: jadd torch
alias jrm='arch jrm'          # usage: jrm torch
alias jstart='arch jstart'
alias jstop='arch jstop'
alias jlogs='arch jlogs'
alias jattach='arch jattach'

# =========================
# Utils
# =========================
alias pls='sudo $(fc -ln -1)'
alias plan='(cd ~/Brain && claude)'
alias cr='claude --resume'
alias ns='nvidia-smi'
alias sim='cd ~/projects/vscode-activity-sim/'
alias stim='python3 vscode_activity_sim.py --tabs 8 --switch-min 2 --switch-max 4 --edit-min 5 --edit-max 8'

# Convert HEIC -> JPG. Usage: heic2jpg file1.heic [file2.heic ...]
heic2jpg() {
  for f in "$@"; do
    sips -s format jpeg "$f" --out "${f%.*}.jpg"
  done
}
