test -f ~/.profile && source ~/.profile
test -f ~/.bashrc && source ~/.bashrc

SHELL_CONFIG_BASEDIR="$HOME/.shell"

# feature reporting, fortune
if test -n "$ITERM_PROFILE" -a -z "$SHELL_CONFIG_SUPRESS_GREETING"; then
  export SHELL_CONFIG_SUPRESS_GREETING=true
  source "$SHELL_CONFIG_BASEDIR"/greeting.sh
fi

unset SHELL_CONFIG_MODS
unset SHELL_CONFIG_TOOLS
unset SHELL_CONFIG_BASEDIR
