#!/bin/bash
# ==========================================
# 🛡️ TERMUX AGENT GUARD - INSTALLER
# ==========================================
# Protect your AI agent memory on Termux
# ==========================================

set -e

echo "🛡️  Termux Agent Guard Installer"
echo "================================"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Check prerequisites
echo "📋 Checking prerequisites..."

# Check git
if ! command -v git &> /dev/null; then
    echo "❌ Git not found. Installing..."
    pkg install git -y
fi
echo "✅ Git: $(git --version)"

# Check curl
if ! command -v curl &> /dev/null; then
    echo "❌ Curl not found. Installing..."
    pkg install curl -y
fi
echo "✅ Curl: $(curl --version | head -1)"

# Check openssl (for encryption)
if ! command -v openssl &> /dev/null; then
    echo "❌ OpenSSL not found. Installing..."
    pkg install openssl-tool -y
fi
echo "✅ OpenSSL: installed"

echo ""
echo "📦 Installing Agent Guard..."

# Create directories
BIN_DIR="$HOME/bin"
mkdir -p "$BIN_DIR"

# Copy scripts
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Main script
cat > "$BIN_DIR/agent-guard" << 'AGENTEOF'
#!/bin/bash
# 🛡️ Agent Guard - Main CLI

GUARD_DIR="$HOME/.agent-guard"
CONFIG_FILE="$GUARD_DIR/config.env"
BACKUP_DIR="$GUARD_DIR/backups"

# Create dirs
mkdir -p "$GUARD_DIR" "$BACKUP_DIR"

case "$1" in
    setup)
        echo "🛡️  Agent Guard Setup"
        echo "===================="
        echo ""
        
        # GitHub setup
        read -p "GitHub Username: " GITHUB_USER
        read -p "GitHub Token: " GITHUB_TOKEN
        read -p "Repo Name [agent-guard-backup]: " REPO_NAME
        REPO_NAME=${REPO_NAME:-agent-guard-backup}
        
        # Save config
        cat > "$CONFIG_FILE" << EOF
GITHUB_USER=$GITHUB_USER
GITHUB_TOKEN=$GITHUB_TOKEN
REPO_NAME=$REPO_NAME
BACKUP_DIR=$BACKUP_DIR
EOF
        chmod 600 "$CONFIG_FILE"
        
        # Generate SSH key if not exists
        if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
            echo "🔑 Generating SSH key..."
            ssh-keygen -t ed25519 -C "agent-guard" -f "$HOME/.ssh/id_ed25519" -N ""
        fi
        
        # Create repo if not exists
        echo "📦 Creating GitHub repo..."
        curl -s -H "Authorization: token $GITHUB_TOKEN" \
             -d "{\"name\":\"$REPO_NAME\",\"private\":true}" \
             "https://api.github.com/user/repos" > /dev/null 2>&1 || true
        
        # Clone repo
        if [ ! -d "$GUARD_DIR/repo" ]; then
            git clone "https://$GITHUB_USER:$GITHUB_TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git" "$GUARD_DIR/repo" 2>/dev/null || \
            git clone "git@github.com:$GITHUB_USER/$REPO_NAME.git" "$GUARD_DIR/repo" 2>/dev/null || true
        fi
        
        echo ""
        echo "✅ Setup complete!"
        echo "📁 Backup dir: $GUARD_DIR/repo"
        echo ""
        echo "Next: agent-guard backup"
        ;;
    
    backup)
        echo "🔄 Starting backup..."
        
        if [ ! -f "$CONFIG_FILE" ]; then
            echo "❌ Not setup yet. Run: agent-guard setup"
            exit 1
        fi
        
        source "$CONFIG_FILE"
        
        # Create backup structure
        REPO="$GUARD_DIR/repo"
        mkdir -p "$REPO/memories" "$REPO/skills" "$REPO/config" "$REPO/sessions"
        
        # Backup memory files
        echo "📝 Backing up memory..."
        cp "$HOME/.hermes/memories/"*.md "$REPO/memories/" 2>/dev/null || true
        cp -r "$HOME/.hermes/memories/Sessions/" "$REPO/sessions/" 2>/dev/null || true
        
        # Backup skills
        echo "🔧 Backing up skills..."
        ls "$HOME/.hermes/skills/" > "$REPO/skills/list.txt" 2>/dev/null || true
        
        # Backup config
        echo "⚙️ Backing up config..."
        cp "$HOME/.hermes/config.yaml" "$REPO/config/" 2>/dev/null || true
        
        # Backup holographic DB (encrypted)
        echo "🧠 Backing up memory database..."
        if [ -f "$HOME/.hermes/memory_store.db" ]; then
            openssl enc -aes-256-cbc -salt -pbkdf2 \
                -in "$HOME/.hermes/memory_store.db" \
                -out "$REPO/memories/memory_store.db.enc" \
                -pass pass:"agent-guard-$(whoami)" 2>/dev/null || true
        fi
        
        # Git push
        cd "$REPO"
        git add -A
        if ! git diff --cached --quiet; then
            git commit -m "🔄 Backup: $(date '+%Y-%m-%d %H:%M')" 2>/dev/null
            git push origin main 2>/dev/null || git push 2>/dev/null
            echo "✅ Backup pushed to GitHub!"
        else
            echo "ℹ️ No changes to backup"
        fi
        ;;
    
    restore)
        echo "🔄 Restoring from backup..."
        
        if [ ! -f "$CONFIG_FILE" ]; then
            echo "❌ Not setup yet. Run: agent-guard setup"
            exit 1
        fi
        
        source "$CONFIG_FILE"
        
        REPO="$GUARD_DIR/repo"
        
        # Pull latest
        cd "$REPO" 2>/dev/null && git pull 2>/dev/null || true
        
        if [ ! -d "$REPO/memories" ]; then
            echo "❌ No backup found!"
            exit 1
        fi
        
        # Restore memory
        echo "📝 Restoring memory..."
        mkdir -p "$HOME/.hermes/memories/Sessions"
        cp "$REPO/memories/"*.md "$HOME/.hermes/memories/" 2>/dev/null || true
        cp "$REPO/sessions/"*.md "$HOME/.hermes/memories/Sessions/" 2>/dev/null || true
        
        # Restore config
        echo "⚙️ Restoring config..."
        cp "$REPO/config/config.yaml" "$HOME/.hermes/" 2>/dev/null || true
        
        # Restore DB (decrypt)
        echo "🧠 Restoring memory database..."
        if [ -f "$REPO/memories/memory_store.db.enc" ]; then
            openssl enc -aes-256-cbc -d -salt -pbkdf2 \
                -in "$REPO/memories/memory_store.db.enc" \
                -out "$HOME/.hermes/memory_store.db" \
                -pass pass:"agent-guard-$(whoami)" 2>/dev/null || true
        fi
        
        echo "✅ Restore complete!"
        echo "ℹ️ Restart Hermes for changes to take effect"
        ;;
    
    status)
        echo "🛡️  Agent Guard Status"
        echo "===================="
        
        if [ ! -f "$CONFIG_FILE" ]; then
            echo "Status: ❌ Not setup"
            echo "Run: agent-guard setup"
            exit 0
        fi
        
        source "$CONFIG_FILE"
        
        echo "GitHub: $GITHUB_USER"
        echo "Repo: $REPO_NAME"
        echo ""
        
        # Check last backup
        REPO="$GUARD_DIR/repo"
        if [ -d "$REPO/.git" ]; then
            cd "$REPO"
            LAST_COMMIT=$(git log -1 --format="%cr" 2>/dev/null || echo "Never")
            echo "Last backup: $LAST_COMMIT"
            echo "Files: $(git ls-files | wc -l)"
        else
            echo "Status: ❌ Repo not cloned"
        fi
        ;;
    
    *)
        echo "🛡️  Termux Agent Guard"
        echo "===================="
        echo ""
        echo "Commands:"
        echo "  agent-guard setup    — First-time setup"
        echo "  agent-guard backup   — Backup to GitHub"
        echo "  agent-guard restore  — Restore from GitHub"
        echo "  agent-guard status   — Check status"
        echo ""
        echo "Examples:"
        echo "  agent-guard setup"
        echo "  agent-guard backup"
        ;;
esac
AGENTEOF

chmod +x "$BIN_DIR/agent-guard"

echo ""
echo "✅ Installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Run: agent-guard setup"
echo "2. Enter your GitHub credentials"
echo "3. Run: agent-guard backup"
echo ""
echo "🔄 Auto-backup (optional):"
echo "Add to crontab: 0 */6 * * * agent-guard backup"
