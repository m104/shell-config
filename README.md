# m104's shell configuration files

### Installation

Installation in four easy steps:

1. Fork and clone this project to your home directory:

```bash
git clone git@github.com:$GITUSER/shell-config.git ~/.shell
```

2. Archive your current shell config files:

```bash
cd $HOME
mv .profile profile.sh
mv .bashrc bashrc.sh
mv .bash_profile bash_profile.sh
```

3. Create shell config symlinks into this repository:

```bash
cd $HOME
ln -s .shell/bashrc.sh .bashrc
ln -s .shell/bash_profile.sh .bash_profile
ln -s .shell/profile.sh .profile
```

4. Create a local script for per-host ENV setup: (optional)

```bash
cat > ~/.shell/local/env.sh
export GOPATH="$HOME/go"
^D
```

