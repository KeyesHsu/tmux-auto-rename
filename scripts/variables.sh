# Default automatic rename only in Git repositories
git_only="@auto-rename-git-only"
default_git_only="on"

is_git="$(cd "$( tmux display -p "#{pane_current_path}" )" && git rev-parse --is-inside-work-tree)"

# Show zoom indicator when rename.
zoom_indicator="@show-zoom-indicator"
default_zoom_indicator="off"
zoom_in="$( tmux display-message -p "#{?window_zoomed_flag,1,}" )"

