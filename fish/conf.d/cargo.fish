set -x RUSTUP_HOME $XDG_DATA_HOME/rustup
set -x CARGO_HOME $XDG_DATA_HOME/cargo
set -x CARGO_NET_GIT_FETCH_WITH_CLI true

set -x PATH $CARGO_HOME/bin $PATH
