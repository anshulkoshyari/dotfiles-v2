# Dotfiles 2025

### Terminal: [WezTerm](https://wezfurlong.org/wezterm/)
WezTerm is a GPU-accelerated terminal emulator and multiplexer. It offers modern features such as true color support, tabs, and a flexible configuration system.
- **Written in**: Rust
- **Configuration**: `.config/wezterm/wezterm.lua`

### Text Editor: [NeoVim](https://neovim.io/)
Improved version of Vim, with a focus on modern extensibility and better integration with external tools.
- **Written in**: C
- **Configuration**: `.config/nvim/init.lua`

### Terminal Prompts: [Starship](https://starship.rs/)
It provides a prompt that works across different terminal emulators and shells.
- **Written in**: Rust
- **Configuration**: `~/.config/starship.toml`

### Tiling Window Manager: [Yabai](https://github.com/koekeishiya/yabai)
Yabai is a macOS window manager that implements a tiling window manager in the spirit of `i3` for Unix-like systems. It allows for efficient workspace management and has a highly customizable setup.
- **Written in**: C
- **Configuration**: `~/.config/yabai/yabairc`

### Keybinding Daemon: [skhd](https://github.com/koekeishiya/skhd)
skhd is a simple and lightweight keybinding manager for macOS. It allows you to bind custom commands to keyboard shortcuts for efficient window management and interaction with other tools.
- **Written in**: C++
- **Configuration**: `~/.config/skhd/skhdrc`

## Setup

To use these dotfiles, simply clone the repository and link the configuration files to their respective locations. For example:

```bash
git clone https://github.com/koshyari/dotfiles-v2.git ~/.config

