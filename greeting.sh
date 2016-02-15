function settermcolor () {
  echo -en "\033[$1;$2m"
}

settermcolor 00 00
echo ""
echo -n "mods:"

settermcolor 01 32
echo "$SHELL_CONFIG_MODS"

settermcolor 00 00
echo -n "tools:"

settermcolor 01 33
echo "$SHELL_CONFIG_TOOLS"

settermcolor 00 00
echo -n "env:"

settermcolor 01 35
echo "$SHELL_CONFIG_ENV"

# fun fortune
echo ""
settermcolor 01 34
if which -s fortune; then
  fortune
  echo ""
fi
settermcolor 00 00
