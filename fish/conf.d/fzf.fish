set -x FZF_DEFAULT_COMMAND rg --column --line-number --color=always --no-heading --smart-case . || true
set -x FZF_DEFAULT_OPTS    '--ansi --disabled --query . --bind "change:reload:rg --column --line-number --no-heading --smart-case {q} || true" --delimiter : --preview "bat --color=always {1} --highlight-line {2}" --preview-window "up,64%,border-bottom,+{2}+3/3,~3"'

set -x FZF_CTRL_T_COMMAND  rg --column --line-number --color=always --no-heading --smart-case . || true
set -x FZF_CTRL_T_OPTS     '--ansi --disabled --query . --bind "change:reload:rg --column --line-number --no-heading --smart-case {q} || true" --delimiter : -preview "bat --color=always {1} --highlight-line {2}" --preview-window "up,64%,border-bottom,+{2}+3/3,~3"'

