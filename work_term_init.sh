#!/bin/bash

tmux new-session -d -s chrome_session 'chrome; exec bash'
tmux new-session -d -s discord_session 'discord; exec bash'

sleep 5

i3-msg '[class="Google-chrome"] move container to workspace 3'
i3-msg '[class="discord"] move container to workspace 4'

tmux attach-session -t discord_session
