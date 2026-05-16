# dotfiles

Opinionated macOS-focused dotfiles for a modern terminal, keyboard-driven shell workflow, and lightweight desktop setup.

## Overview

This repository contains personal configuration for a development environment centered around:

- **Fish** as the interactive shell
- **Starship** for prompt customization
- **AeroSpace** for tiling window management on macOS
- **Karabiner-Elements** for keyboard remapping
- a bootstrap **install script** for setting up the core environment

The goal is a fast, ergonomic, mostly keyboard-first setup.

## Programs

This setup currently includes or installs:

- **AeroSpace**
- **bat**
- **eza**
- **fd**
- **Fish**
- **Fisher**
- **Ghostty**
- **Helix**
- **Homebrew**
- **JetBrains Mono Nerd Font**
- **Karabiner-Elements**
- **mise**
- **plugin-bang-bang**
- **ripgrep**
- **Starship**
- **stow**
- **zellij**
- **zoxide**

## Installation

### Quick start

```sh
git clone https://github.com/jrichman-r7/dotfiles.git
cd dotfiles
./install.sh
```

After installation, open a new terminal session.

### What the installer does

The install script bootstraps the machine by:

- installing Homebrew if needed
- installing terminal and CLI tools
- installing supporting GUI apps and fonts
- symlinking managed configuration with GNU Stow
- setting Fish as the default shell

## Included configuration

### Fish shell

The Fish setup initializes Starship and includes a few convenient abbreviations for working on the dotfiles repo and re-running Stow.

Plugin management is handled with **Fisher**, and the configured plugins currently include **plugin-bang-bang**.

### AeroSpace

The AeroSpace configuration follows an i3-style, keyboard-driven workflow with:

- vim-style directional focus
- directional window movement
- numbered workspaces
- quick resize controls
- tiling/floating toggles
- a service mode for layout management actions

### Karabiner

The keyboard configuration remaps **Caps Lock** so it behaves like:

- **Escape** when tapped
- **Control** when held with other keys

## Philosophy

This repo favors:

- keyboard-first navigation
- minimal friction when opening a new machine
- modern terminal tooling
- simple, understandable config over heavy framework abstraction

## Notes

This is a personal setup, so you may want to adapt shell behavior, keybindings, and installed tools to match your own workflow before using it directly.
