# Default automatic rename only in Git repositories
git_only="@auto-rename-git-only"
default_git_only="on"

is_git="$(cd "$( tmux display -p "#{pane_current_path}" )" && git rev-parse --is-inside-work-tree)"
