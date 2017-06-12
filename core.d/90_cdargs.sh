# User cv/cdargs support
#
# must have cdargs in PATH to enable
#
if which -s cdargs; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS cv"
  function cv () {
    cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
  }
fi
