set -x SKIM_CTRL_T_COMMAND  rg --pretty --no-heading --smart-case .
set -x SKIM_CTRL_T_OPTS     --ansi --interactive --cmd \'rg --pretty --no-heading --smart-case \"{}\"\' --delimiter : --preview \'bat --style=full --color=always {1} --highlight-line {2}\' --preview-window up:64%:+{2}-/3:~3

