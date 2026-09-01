# doots

My personal dotfiles for nvim, tmux, kitty, zsh, fastfetch, kanata, and starship.
Everything lives under `~/.config`.

## What is inside

- `nvim` : Neovim config (lazy.nvim, treesitter, LSP, and quality of life plugins)
- `tmux` : `tmux.conf` with catppuccin and a set of tpm plugins
- `kitty` : kitty terminal config and catppuccin theme
- `zsh` : aliases and shell helpers
- `fastfetch` : fastfetch config with a custom image logo
- `kanata` : keyboard remapping config
- `starship.toml` : starship prompt

## Requirements

Install the tools you actually want to use:

- neovim
- tmux
- kitty or ghostty
- zsh, plus starship, zoxide, and eza
- fastfetch
- kanata (optional)

On macOS with Homebrew:

```sh
brew install neovim tmux kitty zsh starship zoxide eza fastfetch kanata
```

## Install

1. Back up your current config first, just in case:

   ```sh
   mv ~/.config ~/.config.bak
   ```

   Or back up only the folders you care about.

2. Clone the repo:

   ```sh
   git clone https://github.com/xerneas3318/doots.git ~/doots
   ```

3. Link the pieces into `~/.config`:

   ```sh
   mkdir -p ~/.config
   ln -s ~/doots/nvim         ~/.config/nvim
   ln -s ~/doots/tmux         ~/.config/tmux
   ln -s ~/doots/kitty        ~/.config/kitty
   ln -s ~/doots/zsh          ~/.config/zsh
   ln -s ~/doots/fastfetch    ~/.config/fastfetch
   ln -s ~/doots/kanata       ~/.config/kanata
   ln -s ~/doots/starship.toml ~/.config/starship.toml
   ```

   If you prefer, copy the folders instead of linking them.

## Finishing setup

### zsh

Add these lines to your `~/.zshrc` so the aliases and prompt load:

```sh
source ~/.config/zsh/alias.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
```

Then reload with `source ~/.zshrc`.

### tmux

Install tpm (the tmux plugin manager), then install the plugins:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Start tmux and press `prefix + I` to install the plugins. The default prefix is
`Ctrl+b` unless you change it.

### nvim

Just launch `nvim`. lazy.nvim bootstraps itself and installs everything on the
first run.

That is it. Tweak to taste.
