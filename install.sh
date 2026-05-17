#!/usr/bin/env bash
set -euo pipefail

# Homebrew
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Tools
brew bundle --file=- <<EOF
brew "fish"
brew "starship"
brew "zellij"
brew "helix"
brew "stow"
brew "mise"
brew "ripgrep"
brew "fd"
brew "bat"
brew "eza"
brew "zoxide"
cask "ghostty"
cask "font-jetbrains-mono-nerd-font"
cask "aerospace"
EOF

# Symlinks
cd "$(dirname "$0")"
stow ghostty fish starship zellij helix aerospace

# Fish as default
if ! grep -q "$(which fish)" /etc/shells; then
    echo "$(which fish)" | sudo tee -a /etc/shells
fi
chsh -s "$(which fish)"

echo "Done. Open new terminal."
