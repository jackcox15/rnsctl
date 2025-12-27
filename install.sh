#!/usr/bin/env bash
# install.sh - Universal rnsctl installer

set -e

echo "╔════════════════════════════════════════════╗"
echo "║   rnsctl - Reticulum Network Control Tool  ║"
echo "║          Universal Installer v1.0 :)       ║"
echo "╚════════════════════════════════════════════╝"
echo ""

# Detect distro
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  DISTRO="${ID}"
else
  DISTRO="unknown"
fi

echo "Detected distribution: $DISTRO"
echo ""

# Install dependencies based on distro
echo "[1/4] Installing dependencies..."
case "$DISTRO" in
  arch|manjaro|garuda|endeavouros)
    sudo pacman -S --needed libnewt sqlite curl
    ;;
  debian|ubuntu|pop|mint|kali)
    sudo apt update
    sudo apt install -y whiptail sqlite3 curl
    ;;
  fedora|rhel|centos|rocky|alma)
    sudo dnf install -y newt sqlite curl
    ;;
  *)
    echo "WARNING: Unknown distro. Please install manually sorry!"
    echo "  - whiptail/newt"
    echo "  - sqlite3"
    echo "  - curl"
    read -p "Continue anyway? (y/N): " confirm
    [[ "$confirm" != "y" ]] && exit 1
    ;;
esac

echo "Dependencies installed..."
echo ""

# Copy script to /usr/local/bin
echo "[2/4] Installing rnsctl..."
sudo cp rnsctl /usr/local/bin/rnsctl
sudo chmod +x /usr/local/bin/rnsctl
echo "Installed to /usr/local/bin/rnsctl"
echo ""

# Create config directories
echo "[3/4] Creating configuration directories..."
mkdir -p "$HOME/.config/rnsctl"
mkdir -p "$HOME/.local/share/rnsctl/logs"
echo "Configuration directories created"
echo ""

# Verify installation
echo "[4/4] Verifying installation..."
if command -v rnsctl >/dev/null 2>&1; then
  echo "rnsctl is installed and ready!"
  echo ""
  echo "╔════════════════════════════════════════════╗"
  echo "║         Installation Complete!             ║"
  echo "╚════════════════════════════════════════════╝"
  echo ""
  echo "Run 'rnsctl' to get started!"
  echo "Run 'rnsctl status' for a quick system check"
  echo "Run 'rnsctl help' for usage information"
else
  echo "Installation failed - rnsctl not found in PATH"
  exit 1
fi
