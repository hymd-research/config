set -x COURSIER_JVM_CACHE $XDG_CACHE_HOME/coursier/jvm
set -x COURSIER_INSTALL_DIR $XDG_CACHE_HOME/coursier/bin
set -x COURSIER_BIN_DIR $XDG_CACHE_HOME/coursier/bin

set -x PATH $PATH $XDG_CACHE_HOME/coursier/bin
