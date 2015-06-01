# Ruby support
#
# rbenv: must have ~/.rbenv directory
#   - or -
# RVM: must have ~/.rvm directory
#
if test -d "$HOME/.rbenv"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS rbenv"
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
elif test -r "$HOME/.rvm/scripts/rvm"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS rvm"
  source "$HOME/.rvm/scripts/rvm"
fi
