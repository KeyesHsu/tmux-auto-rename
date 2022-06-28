#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"
source "$CURRENT_DIR/scripts/helpers.sh"

check() {
    # Check if automatic rename only in Git repositories
    local git_only_=$(get_tmux_option "$git_only" "$default_git_only")
    local is_git="$(cd "$( tmux display -p "#{pane_current_path}" )" && git rev-parse --is-inside-work-tree)"
    if [ $git_only_ == "on" ] && [ -z "$is_git" ]; then
        exit 0
    fi
}

rename_window() {
    local current_dir="$(basename "$( tmux display -p "#{pane_current_path}" )")"
    tmux rename-window $current_dir
}

main() {
    check
    rename_window
}
main

