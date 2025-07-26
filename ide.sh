!/bin/bash

SESSION_NAME="IDE"
SESSION_NUM=0
SESSION="$SESSION_NAME $SESSION_NUM"
DIR="$(pwd)"

# Find first available session
tmux has-session -t "$SESSION" 2>/dev/null
while [ $? -eq 0 ]; do
  SESSION_NUM=$((SESSION_NUM+1))
  SESSION="$SESSION_NAME $SESSION_NUM"
  tmux has-session -t "$SESSION" 2>/dev/null
done

# create new session
tmux new-session -d -s "$SESSION" -c "$DIR"

# Panel 0: horizontal split
tmux split-window -v -p 10 -c "$DIR" -t "$SESSION:0"
tmux select-pane -t "$SESSION:0.0"

# Vertical split of upper panel
tmux split-window -h -p 90 -c "$DIR" -t "$SESSION:0"


# launch some commands
tmux send-keys -t "$SESSION:0.0" \
  "tree -C -I '__pycache__|.venv|node_modules' | less" C-m


# Attach upper-right panel
tmux select-pane -t "$SESSION:0.1"
tmux attach-session -t "$SESSION"
