#!/usr/bin/env bash
# Bootstraps zsh to use this repo for config.
# Run once: bash /path/to/terminal/install.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZDOTDIR="${SCRIPT_DIR%/scripts}/.config/zsh"
ZSHENV="$HOME/.zshenv"

if [[ -f "$ZSHENV" ]]; then
    cp "$ZSHENV" "${ZSHENV}.bak"
    echo "BAK   $ZSHENV -> ${ZSHENV}.bak"
fi

echo "export ZDOTDIR=\"$ZDOTDIR\"" > "$ZSHENV"
echo "OK    $ZSHENV"
echo "Done. Open a new terminal to apply changes."