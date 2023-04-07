#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/variables.sh"
source "$CURRENT_DIR/scripts/helpers.sh"

tmux bind-key a run-shell "$CURRENT_DIR/scripts/rename.sh"

set_hooks() {
    tmux set-hook -g "after-select-pane" "run-shell $CURRENT_DIR/scripts/rename.sh"
    tmux set-hook -g "after-select-window" "run-shell $CURRENT_DIR/scripts/rename.sh"

    local zoom_indicator_=$(get_tmux_option "$zoom_indicator" "$default_zoom_indicator")
    if [ $zoom_indicator_ == "on" ]; then
        tmux set-hook -g "after-resize-pane" "run-shell $CURRENT_DIR/scripts/rename.sh"
    fi
}

main() {
    set_hooks
}
main

