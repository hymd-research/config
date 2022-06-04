# [Starship.rs](https://starship.rs/)
starship init fish | source

set -x fish_user_paths ~/.local/bin $fish_user_paths
abbr --add dir 'exa --icons -1 --group-directories-first  --tree --level=1'
abbr --add rg 'rg --threads 4'
