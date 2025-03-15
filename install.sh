#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Define the dotfiles directory and target config directory
DOTFILES="$HOME/.dotfiles"
CONFIG="$HOME/.config"

# Print header
echo -e "${BLUE}${BOLD}=== macOS Dotfiles Installation ===${NC}"
echo -e "This script will set up symlinks from your ~/.config directory to the dotfiles repository."

# Check if dotfiles are already cloned
if [ ! -d "$DOTFILES" ]; then
    echo -e "${YELLOW}Dotfiles repository not found at $DOTFILES${NC}"
    echo -e "Please run: ${BOLD}git clone https://github.com/anshulkoshyari/macos-dotfiles.git ~/.dotfiles${NC}"
    exit 1
fi

# Create ~/.config if it doesn't exist
if [ ! -d "$CONFIG" ]; then
    echo -e "${YELLOW}Creating $CONFIG directory...${NC}"
    mkdir -p "$CONFIG"
fi

# Function to safely create symlinks
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Check if source exists (in the dotfiles repo)
    if [ ! -e "$source" ]; then
        echo -e "${RED}Source does not exist: $source${NC}"
        return 1
    fi
    
    # Check if target already exists
    if [ -e "$target" ]; then
        # If it's already a symlink to our dotfiles, we're good
        if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
            echo -e "${GREEN}✓ Already linked: $target${NC}"
            return 0
        fi
        
        # Backup existing configuration
        local backup="${target}.backup.$(date +%Y%m%d%H%M%S)"
        echo -e "${YELLOW}Backing up existing configuration: $target → $backup${NC}"
        mv "$target" "$backup"
    fi
    
    # Create the symlink
    echo -e "${BLUE}Creating symlink: $target → $source${NC}"
    ln -s "$source" "$target"
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ Successfully linked: $target${NC}"
        return 0
    else
        echo -e "${RED}✗ Failed to link: $target${NC}"
        return 1
    fi
}

# Install all configuration directories (excluding README and LICENSE)
echo -e "\n${BOLD}Setting up configuration symlinks...${NC}"

# Find all directories in the dotfiles repo (excluding git directory)
find "$DOTFILES" -mindepth 1 -maxdepth 1 -type d -not -path "*/\.*" | while read dir; do
    dir_name=$(basename "$dir")
    create_symlink "$dir" "$CONFIG/$dir_name"
done

# Summary
echo -e "\n${BLUE}${BOLD}=== Installation Complete ===${NC}"
echo -e "Your dotfiles have been set up. Any existing configurations were backed up with a .backup suffix."
echo -e "You can find your dotfiles repository at: ${BOLD}$DOTFILES${NC}"
echo -e "Configuration files are symlinked to: ${BOLD}$CONFIG${NC}"

echo -e "\n${GREEN}Enjoy your new macOS configuration!${NC}"
