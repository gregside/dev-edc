#!/usr/bin/env bash
# Copies dotfiles from this repo to the home directory.
# Run from anywhere: bash /path/to/terminal/install.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FILES=(.zshrc .aliases .aliases.local)

for file in "${FILES[@]}"; do
    src="$SCRIPT_DIR/$file"
    dest="$HOME/$file"

    if [[ ! -f "$src" ]]; then
        echo "SKIP  $file (not found in repo)"
        continue
    fi

    if [[ -f "$dest" ]]; then
        backup="${dest}.bak"
        cp "$dest" "$backup"
        echo "BAK   $dest -> $backup"
    fi

    cp "$src" "$dest"
    echo "OK    $dest"
done