# dotfiles

Opinionated macOS-focused dotfiles for a modern terminal and keyboard-driven desktop setup.

## What’s included

This repo currently manages:

- **Fish shell** configuration
- **Starship** prompt integration
- **Zellij** and **Helix** as terminal tools/editor dependencies
- **AeroSpace** window manager config for tiling workflows on macOS
- **Karabiner-Elements** keyboard remaps
- A bootstrap **install script** powered by Homebrew and GNU Stow

## Repo layout

```text
.
├── aerospace/
│   └── .config/
│       └── aerospace/
│           └── aerospace.toml
├── fish/
│   └── .config/
│       └── fish/
│           ├── config.fish
│           └── fish_plugins
├── karabiner/
│   └── .config/
│       └── karabiner/
│           └── karabiner.json
├── install.sh
└── README.md
```

## Highlights

### Fish shell

The Fish config includes:

- `starship init fish | source` for prompt setup
- handy abbreviations for working on this repo:
  - `dot` → `cd ~/dotfiles`
  - `dotst` → jump in and run `git status`
  - `dotc` → jump in, stage all, and commit
  - `stowr` → re-run Stow from the repo root

Plugins are tracked in `fish_plugins` and currently include:

- `jorgebucaran/fisher`
- `oh-my-fish/plugin-bang-bang`

### AeroSpace

The AeroSpace config is set up with an i3-style workflow on macOS, including:

- vim-style focus movement with `alt-h/j/k/l`
- directional window movement with `alt-shift-h/j/k/l`
- workspace switching on `alt-1` through `alt-9`
- direct resizing shortcuts
- floating/tiling toggles
- service mode for administrative layout actions

### Karabiner

Karabiner is configured with a common productivity remap:

- `Caps Lock` acts as `Escape` when tapped
- `Caps Lock` acts as `Control` when held with other keys

## Installation

### Quick start

```sh
git clone https://github.com/jrichman-r7/dotfiles.git
cd dotfiles
./install.sh
```

### What the installer does

`install.sh` will:

1. Install Homebrew if it is not already present
2. Install the following packages:
   - `fish`
   - `starship`
   - `zellij`
   - `helix`
   - `stow`
   - `mise`
   - `ripgrep`
   - `fd`
   - `bat`
   - `eza`
   - `zoxide`
3. Install these casks:
   - `ghostty`
   - `font-jetbrains-mono-nerd-font`
4. Use Stow to symlink managed config directories
5. Add Fish to `/etc/shells` if needed
6. Change the default shell to Fish

After the script finishes, open a new terminal session.

## Manual setup

If you prefer not to run the bootstrap script, you can install your tools manually and then symlink configs with Stow.

```sh
brew install fish starship zellij helix stow mise ripgrep fd bat eza zoxide
brew install --cask ghostty font-jetbrains-mono-nerd-font
stow ghostty fish starship zellij helix
```

## Notes

- This setup appears to be tailored primarily for **macOS**.
- `install.sh` currently stows `ghostty`, `fish`, `starship`, `zellij`, and `helix`, so those directories should exist locally in the repo for the script to succeed.
- Review configs before applying them on a different machine, especially shell defaults, key remaps, and window manager bindings.

## Customization ideas

A few good next steps for this repo:

- add screenshots or GIFs of the terminal + AeroSpace workflow
- document Ghostty, Starship, Zellij, and Helix configs if they are also tracked here
- add a bootstrap section for fresh macOS machine setup
- separate machine-specific values from portable defaults
- add a `Brewfile` if you want package management outside the install script

## License

Add a license if you want others to reuse parts of this setup.
