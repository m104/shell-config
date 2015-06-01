if which -s cdargs; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS cv"
  function cv () {
    cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
  }
fi
