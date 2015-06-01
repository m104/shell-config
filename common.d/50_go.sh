# GOPATH
if test -n "$GOPATH" -a -d "$GOPATH"; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS GOPATH"

  # GOPATH/bin
  binpath="$GOPATH/bin"
  if test -d "$binpath"; then
    export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS GOPATH/bin"
    export PATH="$PATH:$binpath"
  fi
  unset binpath
fi
