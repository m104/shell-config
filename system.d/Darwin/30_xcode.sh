# Xcode
toolspath="/Applications/Xcode.app/Contents/Developer/Tools"
if test -d "$toolspath"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS xcode"
  export PATH="$PATH:$toolspath"
fi
unset toolspath
