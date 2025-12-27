#!/usr/bin/env bash

set -e

echo "Uninstalling rnsctl..."
echo ""

# Remove binary
if [[ -f /usr/local/bin/rnsctl ]]; then
    sudo rm /usr/local/bin/rnsctl
    echo "Removed /usr/local/bin/rnsctl"
fi

# Ask about config
read -p "Remove configuration files? (y/N): " remove_config

if [[ "$remove_config" =~ ^[Yy]$ ]]; then
    rm -rf "$HOME/.config/rnsctl"
    rm -rf "$HOME/.local/share/rnsctl"
    echo "Removed configuration"
else
    echo "Kept configuration"
fi

echo ""
echo "rnsctl uninstalled successfully"
```

### 4. Add .gitignore:
```
# Logs
*.log
rns_logs/

# Temp files
*.tmp
*.swp
*~

# Cache
.cache/
__pycache__/

# Build artifacts
*.tar.gz
pkg/
src/
