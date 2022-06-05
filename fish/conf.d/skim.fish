set -x SKIM_DEFAULT_COMMAND rg --pretty --no-heading --smart-case . || true
set -x SKIM_DEFAULT_OPTIONS '--ansi --query "" --cmd-query "" --bind "ctrl-d:kill-line" --delimiter : --preview "bat --style=full --color=always {1} --highlight-line {2}" --preview-window up:64%:+{2}-/3:~3'

