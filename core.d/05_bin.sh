# shell-config bin PATH support
corebinpath="$SHELL_CONFIG_BASEDIR/bin"
if test -d "$corebinpath"; then
  export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV .shell/bin"
  export PATH="$corebinpath:$PATH"
fi
unset corebinpath

# User ~/bin PATH support
#
# must have ~/bin directory to enable
#
binpath="$HOME/bin"
if test -d "$binpath"; then
  export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV ~/bin"
  export PATH="$binpath:$PATH"
fi
unset binpath
