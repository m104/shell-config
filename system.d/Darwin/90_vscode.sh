VSCODE_DIR="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

if [ -d "$VSCODE_DIR" ]; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS vscode"
  export PATH="$PATH:$VSCODE_DIR"
fi
