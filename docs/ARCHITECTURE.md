# 🏗️ Architecture

## System Overview

```
┌─────────────────────────────────────────────────────┐
│                 USER'S TERMUX DEVICE                │
│                                                     │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐│
│  │   Memory    │  │   Skills    │  │   Config    ││
│  │   Files     │  │   Files     │  │   Files     ││
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘│
│         │                │                │        │
│         └────────────────┼────────────────┘        │
│                          │                         │
│                  ┌───────▼───────┐                 │
│                  │  Agent Guard  │                 │
│                  │   (CLI Tool)  │                 │
│                  └───────┬───────┘                 │
│                          │                         │
│                  ┌───────▼───────┐                 │
│                  │   Encryption  │                 │
│                  │   (OpenSSL)   │                 │
│                  └───────┬───────┘                 │
│                          │                         │
└──────────────────────────┼─────────────────────────┘
                           │
                    ┌──────▼──────┐
                    │   GitHub    │
                    │   (Private  │
                    │    Repo)    │
                    └─────────────┘
```

## Components

### 1. Memory Files
```
~/.hermes/memories/
├── MEMORY.md              — Central hub
├── User Profile.md        — User info
├── Tools Reference.md     — Tools documentation
├── Config Reference.md    — Configuration
├── Network Setup.md       — Network info
├── System Setup.md        — System info
└── Sessions/              — Daily logs
```

### 2. Skills
```
~/.hermes/skills/
├── skill-name/
│   ├── SKILL.md           — Skill definition
│   ├── references/        — Reference docs
│   └── templates/         — Templates
```

### 3. Configuration
```
~/.hermes/config.yaml      — Main config
~/.hermes/memory_store.db  — Holographic memory
```

## Backup Flow

```
1. User runs: agent-guard backup
            │
            ▼
2. Read config.env
            │
            ▼
3. Copy files to staging area
            │
            ├──→ Copy memory files
            ├──→ Copy skills list
            ├──→ Copy config
            └──→ Encrypt database
            │
            ▼
4. Git add & commit
            │
            ▼
5. Git push to GitHub
            │
            ▼
6. Verify success
```

## Restore Flow

```
1. User runs: agent-guard restore
            │
            ▼
2. Git pull from GitHub
            │
            ▼
3. Copy files to ~/.hermes/
            │
            ├──→ Restore memory files
            ├──→ Restore config
            └──→ Decrypt database
            │
            ▼
4. Verify integrity
            │
            ▼
5. Restart Hermes
```

## Security Model

```
┌─────────────────────────────────────┐
│           SECURITY LAYERS           │
├─────────────────────────────────────┤
│ 1. GitHub Private Repo              │
│    └── Only authorized users        │
│                                     │
│ 2. SSH Key Authentication           │
│    └── Per-device SSH keys          │
│                                     │
│ 3. Personal Access Token            │
│    └── Scoped permissions           │
│                                     │
│ 4. File Encryption (Optional)       │
│    └── AES-256 for sensitive data   │
│                                     │
│ 5. .gitignore Protection            │
│    └── Exclude sensitive files      │
└─────────────────────────────────────┘
```

## Multi-Agent Support

```
GitHub Account: krm-z4phkiel
├── hermester/           — Hermes (POCO X3 Pro)
│   ├── hermes/         — Memory, skills, config
│   ├── clx/            — Ready for CLX
│   └── shared/         — Shared knowledge
│
├── hermesprox-backup/  — CLX (Server)
│   ├── memories/       — CLX memories
│   ├── knowledge/      — CLX knowledge
│   └── preferences/    — CLX preferences
│
└── termux-agent-guard/ — This project
    ├── bin/            — CLI tools
    ├── lib/            — Libraries
    └── docs/           — Documentation
```

## Data Flow

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│    Hermes    │────▶│  Agent Guard │────▶│    GitHub    │
│   (Local)    │     │   (Backup)   │     │   (Cloud)    │
└──────────────┘     └──────────────┘     └──────────────┘
       │                    │                    │
       │                    │                    │
       ▼                    ▼                    ▼
  Read/Write           Encrypt/            Store/
  Memory               Decrypt             Version
```
