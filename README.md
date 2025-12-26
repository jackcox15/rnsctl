# rnsctl - Reticulum Network Control

A user friendly terminal interface for managing Reticulum mesh networks and MeshChat.

# Demo
<p align="center">
  <img src="./exampls/tui_menu.gif" alt="Control Panel Demo" width="600">
</p>

## Features

- **Interactive TUI**: Easy to use menu system
- **System Monitoring**: Real time service status
- **Service Management**: Restart services with one click
- **Network Activity**:See nearby mesh devices
- **Message Overview**: View conversation stats
- **Quick Fixes**: One-click problem solving
- **Detailed Logging**: Track system events

## Quick Install
```bash
git clone https://github.com/jackcox15/rnsctl
cd rnsctl
chmod +x install.sh
./install.sh
```

## Usage
```bash
# Launch interactive menu
rnsctl

# Quick status check
rnsctl status

# Show help
rnsctl help
```

## Requirements

- **Reticulum** - Core mesh networking stack
- **systemd** - Service management
- **Optional: MeshChat** - Messaging features
- **Optional: WireGuard** - VPN connectivity

### This tool was inspired by th original "kairosctl" program in the Kairos project
