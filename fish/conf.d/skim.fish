set -x SKIM_DEFAULT_COMMAND rg --column --line-number --color=always --no-heading --smart-case . || true
set -x SKIM_DEFAULT_OPTIONS '--ansi --query "" --cmd-query "" --bind "change:reload:rg --column --line-number --no-heading --smart-case {q} || true" --delimiter : --preview "bat --style=full --color=always {1} --highlight-line {2}" --preview-window up:64%:+{2}-/3:~3'

set -x SKIM_CTRL_T_COMMAND  rg --column --line-number --color=always --no-heading --smart-case . || true
set -x SKIM_CTRL_T_OPTS     '--ansi --query "" --cmd-query "" --bind "change:reload:rg --column --line-number --no-heading --smart-case {q} || true" --delimiter : --preview "bat --style=full --color=always {1} --highlight-line {2}" --preview-window up:64%:+{2}-/3:~3'

set -x SKIM_ENABLE_OPEN_PREVIEW 1
set -x SKIM_TMUX 1

abbr --add sk "sk | hawk -d: -m 'head'"
