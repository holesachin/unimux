#!/usr/bin/env bash
#
# !! unixmux !!
#

MODULES="./modules"
WIDGETS="./widgets"
LIBS="./libs"

# scratch
bind -n C-x run-shell "
if tmux list-sessions -F '#{session_name}' | grep -q kronic; then
  tmux detach-client -s kronic
else
  tmux display-popup -E -w 70% -h 70% 'tmux -u attach -t kronic >/dev/null || tmux -u new -s kronic'
fi
"

