# main zsh settings, env in .zprofile

# source shell files
[ -f "${ZDOTDIR}/../shell/alias" ] && source "${ZDOTDIR}/../shell/alias"

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="${ZDOTDIR}/custom"
ZSH_THEME="gregw"
plugins=()
ZSH_COMPDUMP="$HOME/.cache/.zcompdump"
mkdir -p "$HOME/.cache"
source $ZSH/oh-my-zsh.sh

# history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/.zsh_history
setopt HIST_IGNORE_DUPS   # don't record consecutive duplicates
setopt HIST_IGNORE_SPACE  # don't record commands starting with a space
setopt SHARE_HISTORY      # share history across sessions

# completion
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"