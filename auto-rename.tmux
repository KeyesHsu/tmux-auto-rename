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

get_current_dir() {
    if [ -z "$is_git" ]; then
        current_dir="$(basename "$( tmux display -p "#{pane_current_path}" )")"
    else
        current_dir="$( cd "$( tmux display -p "#{pane_current_path}")" && basename $(git rev-parse --show-toplevel))"
    fi
}

show_zoom_indicator() {
    local zoom_indicator_=$(get_tmux_option "$zoom_indicator" "$default_zoom_indicator")
    if [ $zoom_indicator_ == "on" ] && [ -n "$zoom_in" ]; then
        current_dir="$current_dir(🔍️)"
    fi
}

process_name() {
    show_zoom_indicator
}

rename_window() {
    tmux rename-window $current_dir
}

main() {
    check
    get_current_dir
    process_name
    rename_window
}
main

