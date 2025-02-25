#!/bin/bash

# Priority: pacman → yay → brew (already installed) → custom script
install_pkg() {
    local pkg="$1"
    echo "Attempting to install $pkg..."

    # 1. Try pacman (Arch native)
    if sudo pacman -S --noconfirm "$pkg"; then
        echo "Installed via pacman: $pkg"
        return 0
    fi

    # 2. Try yay (AUR helper)
    if command -v yay &> /dev/null && yay -S --noconfirm "$pkg"; then
        echo "Installed via yay: $pkg"
        return 0
    fi

    # 3. Try Homebrew (already ensured)
    if brew install "$pkg"; then
        echo "Installed via Homebrew: $pkg"
        return 0
    fi

    # 4. Fallback to custom script
    local script="$DOTFILES_DIR/scripts/arch/install_${pkg}.sh"
    if [ -f "$script" ]; then
        echo "Using custom script for $pkg..."
        /bin/bash "$script"
        return 0
    fi

    echo "Failed to install $pkg (no method found)"
    return 1
}
