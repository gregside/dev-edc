# Source shared aliases and functions
[ -f ~/.aliases ] && source ~/.aliases

# Bash-specific aliases
alias prof='vim ~/.bash_profile'
alias rsrc='source ~/.bash_profile'

# Launch zsh for interactive sessions
if [ -t 1 ]; then
    exec zsh
fi
