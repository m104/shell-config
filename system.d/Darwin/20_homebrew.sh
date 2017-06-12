# homebrew
brewpath="/usr/local/sbin"
if test -d "$brewpath"; then
  export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV brew"
  export PATH="$brewpath:$PATH"
fi
unset brewpath
