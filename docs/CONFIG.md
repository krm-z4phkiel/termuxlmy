# ⚙️ Configuration Guide

## Config File Location

```
~/.agent-guard/config.env
```

## Available Settings

```bash
# GitHub Settings
GITHUB_USER=your-username
GITHUB_TOKEN=ghp_xxxxxxxx
REPO_NAME=agent-guard-backup

# Backup Settings
BACKUP_DIR=~/.agent-guard/repo
AUTO_BACKUP=true
BACKUP_INTERVAL=6  # hours

# Encryption Settings
ENCRYPT_DB=true
ENCRYPT_KEY=your-secret-key

# What to backup
BACKUP_MEMORY=true
BACKUP_SKILLS=true
BACKUP_CONFIG=true
BACKUP_SESSIONS=true
BACKUP_SCRAPES=false

# Notification
NOTIFY_ON_BACKUP=true
NOTIFY_ON_ERROR=true
```

## Environment Variables

You can also set via environment:

```bash
export AGENT_GUARD_USER="your-username"
export AGENT_GUARD_TOKEN="ghp_xxxxxxxx"
```

## Selective Backup

Edit `config.env` to choose what to backup:

```bash
# Backup only memory
BACKUP_MEMORY=true
BACKUP_SKILLS=false
BACKUP_CONFIG=false

# Backup everything
BACKUP_MEMORY=true
BACKUP_SKILLS=true
BACKUP_CONFIG=true
BACKUP_SESSIONS=true
BACKUP_SCRAPES=true
```

## Encryption

### Enable encryption for memory database:

```bash
ENCRYPT_DB=true
ENCRYPT_KEY="my-secret-password"
```

### Manual encryption:

```bash
# Encrypt
openssl enc -aes-256-cbc -salt -pbkdf2 \
    -in memory_store.db \
    -out memory_store.db.enc \
    -pass pass:my-password

# Decrypt
openssl enc -aes-256-cbc -d -salt -pbkdf2 \
    -in memory_store.db.enc \
    -out memory_store.db \
    -pass pass:my-password
```

## Multiple Agents

If you have multiple AI agents, create separate configs:

```bash
# Agent 1 (Hermes)
agent-guard setup --repo hermes-backup

# Agent 2 (CLX)
agent-guard setup --repo clx-backup
```

## Security Best Practices

1. **Never commit token to git**
2. **Use SSH keys for authentication**
3. **Enable encryption for sensitive data**
4. **Use private repositories**
5. **Regular backup verification**
