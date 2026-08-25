#!/bin/bash
# ==========================================
# 🧠 termuxlmy - Installer
# ==========================================
# Local Memory System for AI Agents
# ==========================================

set -e

echo "🧠 termuxlmy Installer"
echo "======================"
echo ""

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# Check prerequisites
echo "📋 Checking prerequisites..."

# Check git
if ! command -v git &> /dev/null; then
    echo "❌ Git not found. Installing..."
    pkg install git -y
fi
echo "✅ Git: $(git --version)"

# Check python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python not found. Installing..."
    pkg install python -y
fi
echo "✅ Python: $(python3 --version)"

# Check curl
if ! command -v curl &> /dev/null; then
    echo "❌ Curl not found. Installing..."
    pkg install curl -y
fi
echo "✅ Curl: installed"

echo ""
echo "📦 Installing termuxlmy..."

# Create directories
BIN_DIR="$HOME/bin"
mkdir -p "$BIN_DIR"
mkdir -p "$HOME/.hermes/memories/Sessions"

# Copy main script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -f "$SCRIPT_DIR/bin/termuxlmy" ]; then
    cp "$SCRIPT_DIR/bin/termuxlmy" "$BIN_DIR/termuxlmy"
    chmod +x "$BIN_DIR/termuxlmy"
else
    echo "❌ bin/termuxlmy not found!"
    exit 1
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Run: termuxlmy setup"
echo "2. Run: termuxlmy status"
echo ""
echo "📝 Commands:"
echo "  termuxlmy setup      — Initialize memory"
echo "  termuxlmy status     — Check status"
echo "  termuxlmy add <text> — Add a fact"
echo "  termuxlmy search <q> — Search facts"
