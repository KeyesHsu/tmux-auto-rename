#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"
source "$CURRENT_DIR/scripts/helpers.sh"

check() {
    # Check if automatic rename only in Git repositories
    local git_only_=$(get_tmux_option "$git_only" "$default_git_only")
    if [ $git_only_ == "on" ] && [ -z "$is_git" ]; then
        exit 0
    fi
}

rename_window() {
    if [ -z "$is_git" ]; then
        local current_dir="$(basename "$( tmux display -p "#{pane_current_path}" )")"
    else
        local current_dir="$( cd "$( tmux display -p "#{pane_current_path}")" && basename $(git rev-parse --show-toplevel))"
    fi
    tmux rename-window $current_dir
}

main() {
    check
    rename_window
}
main

