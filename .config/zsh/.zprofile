# env vars, zsh settings in .config/zsh/.zshrc
# ZDOTDIR is set in ~/.zshenv to point at this repo

export EDITOR="vim"
export XDG_CONFIG_HOME="${ZDOTDIR%/*}"  # parent of .config/zsh -> .config/