# =============================================================================
# OH MY ZSH
# =============================================================================

export ZSH="$HOME/.oh-my-zsh"

# Theme — see https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Plugins — load sparingly, each one adds startup time
# Standard plugins: $ZSH/plugins/ | Custom plugins: $ZSH_CUSTOM/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# =============================================================================
# ENVIRONMENT
# =============================================================================

# export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
# export LANG=en_US.UTF-8
# export MANPATH="/usr/local/man:$MANPATH"
# export ARCHFLAGS="-arch $(uname -m)"

# Editor — use nvim locally, vim over SSH
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

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
# OMZ BEHAVIOR
# =============================================================================

# zstyle ':omz:update' mode reminder   # options: disabled | auto | reminder
# DISABLE_AUTO_TITLE="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true" # speeds up git status in large repos
# HIST_STAMPS="yyyy-mm-dd"

# =============================================================================
# ALIASES & FUNCTIONS
# =============================================================================

# Shared aliases (used by both bash and zsh)
[ -f ~/.aliases ] && source ~/.aliases

# Zsh-specific
alias prof='vim ~/.zshrc'
alias rsrc='source ~/.zshrc'
