#!/bin/bash

# Priority: apt → snap → brew (already installed by install.sh) → custom script
install_pkg() {
    local pkg="$1"
    echo "Attempting to install $pkg..."

    # 1. Try apt (Debian native)
    if sudo apt install -y "$pkg"; then
        echo "Installed via apt: $pkg"
        return 0
    fi

    # 2. Try snap (optional)
    if command -v snap &> /dev/null; then
        if sudo snap install "$pkg"; then
            echo "Installed via snap: $pkg"
            return 0
        fi
    fi

    # 3. Try Homebrew (already ensured by install.sh)
    if brew install "$pkg"; then
        echo "Installed via Homebrew: $pkg"
        return 0
    fi

    # 4. Fallback to custom script
    local script="$DOTFILES_DIR/scripts/debian/install_${pkg}.sh"
    if [ -f "$script" ]; then
        echo "Using custom script for $pkg..."
        /bin/bash "$script"
        return 0
    fi

    echo "Failed to install $pkg (no method found)"
    return 1
}
