set -x GOPATH $XDG_DATA_HOME/go
set -x GOENV $XDG_CONFIG_HOME/go/env
set -x GOCACHE $XDG_CACHE_HOME/go-build
set -x GOBIN $GOPATH/bin

set -x PATH $PATH $XDG_DATA_HOME/go/bin
