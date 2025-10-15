# --- Pure customizations ---
# Show full working directory (don’t shorten with …)
PURE_PROMPT_DIRTRIM=0

# Show command execution time after 3 seconds
PURE_CMD_MAX_EXEC_TIME=3

# Show git branch and dirty status
PURE_GIT_PULL=1

# Use custom prompt color scheme
zstyle :prompt:pure:path color cyan
zstyle :prompt:pure:git:branch color yellow
zstyle :prompt:pure:execution_time color magenta

export TMUX_CONF_PATH="$HOME/.config/tmux/tmux.conf"
alias tmux="tmux -f $TMUX_CONF_PATH"

