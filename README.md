# MacOS Dotfiles

### Terminal: [WezTerm](https://wezfurlong.org/wezterm/)
- **Written in**: Rust
- **Configuration**: `.config/wezterm/wezterm.lua`

### Text Editor: [NeoVim](https://neovim.io/)
- **Written in**: C
- **Configuration**: `.config/nvim/init.lua`

### Terminal Prompts: [Starship](https://starship.rs/)
- **Written in**: Rust
- **Configuration**: `~/.config/starship.toml`

### Tiling Window Manager: [Yabai](https://github.com/koekeishiya/yabai)
Yabai is a macOS window manager that implements a tiling window manager in the spirit of `i3` for Unix-like systems.
- **Written in**: C
- **Configuration**: `~/.config/yabai/yabairc`

### Keybinding Daemon: [skhd](https://github.com/koekeishiya/skhd)
skhd is a simple and lightweight keybinding manager for macOS.
- **Written in**: C++
- **Configuration**: `~/.config/skhd/skhdrc`

## Installation

### Option 1: Manual installation (recommended for first-time users)

# Clone the repository
git clone https://github.com/anshulkoshyari/macos-dotfiles.git ~/.dotfiles

# Run the installation script
cd ~/.dotfiles
chmod +x install.sh
./install.sh

### Option 2: One-liner (for the brave)
git clone https://github.com/anshulkoshyari/macos-dotfiles.git ~/.dotfiles && cd ~/.dotfiles && chmod +x install.sh && ./install.sh
