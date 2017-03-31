# GOPATH support
#
# export GOPATH to enable
#
if test -n "$GOPATH" -a -d "$GOPATH"; then
  export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV GOPATH"

  # GOPATH/bin
  binpath="$GOPATH/bin"
  if test -d "$binpath"; then
    export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV GOPATH/bin"
    export PATH="$PATH:$binpath"
  fi
  unset binpath
fi
