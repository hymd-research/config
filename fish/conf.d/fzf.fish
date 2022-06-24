set x FZF_TMUX 1

set -x FZF_CTRL_T_COMMAND  rg --column --line-number --color=always --no-heading --smart-case .
set -x FZF_CTRL_T_OPTS     --ansi --disabled --bind \'change:reload:rg --column --line-number --color=always --no-heading --smart-case {q} || true\' --delimiter : --preview \'bat --style=full --color=always {1} --highlight-line {2}\' --preview-window \'up,64%,border-bottom,+{2}+3/3,~3\'

