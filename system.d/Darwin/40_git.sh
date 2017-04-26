# Git required
which -s git || return

gitpromptpath=`brew --prefix git 2> /dev/null`
if test -d "$gitpromptpath"; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_TOOLS git-prompt"
  . "$gitpromptpath/etc/bash_completion.d/git-prompt.sh"
fi
unset gitpromptpath

