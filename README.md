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

### Built With
- [Reticulum](https://reticulum.network/) - Cryptography based mesh networking stack by [@markqvist](https://github.com/markqvist)
  
- [MeshChat](https://github.com/liamcottle/reticulum-meshchat) - LXMF chat application by [@liamcottle](https://github.com/liamcottle)
  
- [Whiptail](https://linux.die.net/man/1/whiptail) - Dialog boxes for Bash scripts

### Inspiration
This tool originated from the [Kairos Project](https://github.com/jackcox15/Kairos) - a comprehensive mesh networking system focused on making Reticulum more accessible for privacy focusd individuals, mutual aid networks, or local communities striving for offline comms. 

