# 📖 Installation Guide

## Requirements

- **Device**: Android phone with Termux installed
- **Termux**: Latest version from F-Droid
- **Internet**: WiFi or mobile data
- **GitHub Account**: Free at github.com

## Step 1: Install Termux

Download Termux from **F-Droid** (NOT Play Store):

```
https://f-droid.org/en/packages/com.termux/
```

## Step 2: Install Dependencies

Open Termux and run:

```bash
pkg update && pkg upgrade -y
pkg install git curl openssl-tool -y
```

## Step 3: Install Agent Guard

### Option A: One-line install (Recommended)

```bash
bash <(curl -s https://raw.githubusercontent.com/krm-z4phkiel/termux-agent-guard/main/install.sh)
```

### Option B: Manual install

```bash
# Clone repo
git clone https://github.com/krm-z4phkiel/termux-agent-guard.git
cd termux-agent-guard

# Run installer
bash install.sh
```

## Step 4: Setup GitHub

```bash
agent-guard setup
```

It will ask for:

1. **GitHub Username**: Your GitHub username
2. **GitHub Token**: Create at https://github.com/settings/tokens
   - Click "Generate new token (classic)"
   - Select "repo" scope
   - Copy the token
3. **Repo Name**: Default is `agent-guard-backup`

## Step 5: First Backup

```bash
agent-guard backup
```

## Step 6: Verify

```bash
agent-guard status
```

You should see:
```
🛡️  Agent Guard Status
====================
GitHub: your-username
Repo: agent-guard-backup
Last backup: 2 minutes ago
Files: 12
```

## Step 7: Auto-Backup (Optional)

Add to crontab for automatic backups:

```bash
# Edit crontab
crontab -e

# Add this line (backup every 6 hours)
0 */6 * * * agent-guard backup
```

## Troubleshooting

### "Permission denied"
```bash
chmod +x ~/bin/agent-guard
```

### "Git not found"
```bash
pkg install git -y
```

### "Token invalid"
- Make sure token has `repo` scope
- Check token hasn't expired
- Regenerate if needed

### "Repo not found"
```bash
# Recreate repo
agent-guard setup
```

## Next Steps

- [Configuration Guide](CONFIG.md)
- [Troubleshooting](TROUBLESHOOT.md)
- [Architecture](ARCHITECTURE.md)
