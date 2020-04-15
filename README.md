# m104's shell configuration files

## Base Installation

Fork and clone this project to your home directory:

```bash
git clone git@github.com:$GITUSER/shell-config.git ~/.shell
```

### Fish Setup

1. Archive your current fish config:

```fish
mv ~/.config/fish ~/.config/fish-
```

2. Create a fish config symlink into this repository:

```fish
ln -s ~/.shell/fish ~/.config/fish
```

### Bash Setup

1. Archive your current shell config files:

```bash
cd $HOME
mv .profile profile.sh
mv .bashrc bashrc.sh
mv .bash_profile bash_profile.sh
```

2. Create shell config symlinks into this repository:

```bash
cd $HOME
ln -s .shell/bashrc.sh .bashrc
ln -s .shell/bash_profile.sh .bash_profile
ln -s .shell/profile.sh .profile
```

3. Create a local script for per-host ENV setup: (optional)

```bash
cat > ~/.shell/local/env.sh
export GOPATH="$HOME/go"
^D
```

