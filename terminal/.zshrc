# =============================================================================
# Greg's Zsh Configuration
# =============================================================================
# ==== ENVIRONMENT ====
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Theme — see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gregw" # custom theme located at ~/.oh-my-zsh/custom/themes/gregw.zsh-theme
# function parse_git_branch() {
# git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
# }
# setopt PROMPT_SUBST
# export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{207}$(parse_git_branch)%f %F{normal}$%f '

# Standard plugins: $ZSH/plugins/ | Custom plugins: $ZSH_CUSTOM/plugins/
plugins=(git)


# =============================================================================
# HISTORY
# =============================================================================

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS       # don't record duplicate commands
setopt HIST_IGNORE_SPACE      # don't record commands starting with a space
setopt SHARE_HISTORY          # share history across sessions

# =============================================================================
# COMPLETION & INPUT
# =============================================================================

HYPHEN_INSENSITIVE="true"    # treat - and _ as interchangeable in completion
# ENABLE_CORRECTION="true"     # enable command auto-correction
COMPLETION_WAITING_DOTS="true" # show dots while waiting for completion

# =============================================================================
# ALIASES & FUNCTIONS
# =============================================================================

# git aliases 
alias gc='git checkout' 
alias gc-='git checkout -' 
alias gp='git pull' 
alias gl='git log --oneline'

# convenience/misc aliases 
alias prof='vim ~/.zshrc' 
alias rsrc='source ~/.zshrc' 
alias ..='cd ..' 
alias cd..='cd ..' 
alias cls='clear' 
alias weather='curl wttr.in/chicago'

# Local aliases (machine-specific, not tracked in repo)
[ -f ~/.aliases.local ] && source ~/.aliases.local