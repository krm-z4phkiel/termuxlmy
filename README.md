# 🛡️ Termux Agent Guard

> Backup, Protect & Recover Your AI Agent Memory on Termux

```
 ╔══════════════════════════════════════════════╗
 ║  🛡️  TERMUX AGENT GUARD                     ║
 ║  Keep your AI agent memory safe forever      ║
 ║                                              ║
 ║  ✅ Auto-backup to GitHub                    ║
 ║  ✅ Memory encryption                        ║
 ║  ✅ Cross-device sync                        ║
 ║  ✅ One-click recovery                       ║
 ╚══════════════════════════════════════════════╝
```

## 😩 Masalah

```
Kamu punya AI agent di Termux...
├── Memory penting tersimpan
├── Skills sudah susah dikumpulin
├── Config sudah tersetting
├── Tiba-tiba HP rusak / Termux crash
└── SEMUA HILANG! 😱
```

## 💡 Solusi

```
Termux Agent Guard melindungi:
├── 📦 Memory files (MEMORY.md, User Profile, etc)
├── 🔧 Skills & configs
├── 🧠 Holographic memory database
├── 📝 Session logs
└── 🔑 Semua disimpan aman di GitHub (private)
```

## 🚀 Quick Start

### 1. Install (30 detik)
```bash
# Clone this repo
git clone https://github.com/krm-z4phkiel/termux-agent-guard.git
cd termux-agent-guard

# Run installer
bash install.sh
```

### 2. Setup (2 menit)
```bash
# Setup GitHub connection
agent-guard setup

# It will ask for:
# - GitHub username
# - GitHub token (from github.com/settings/tokens)
```

### 3. Done! (Otomatis)
```bash
# Auto-backup runs every 6 hours
# Manual backup anytime:
agent-guard backup

# Restore on new device:
agent-guard restore
```

## 📋 Fitur

| Fitur | Deskripsi | Status |
|-------|-----------|--------|
| **Auto-backup** | Backup otomatis ke GitHub | ✅ |
| **Memory encryption** | Enkripsi file sensitif | ✅ |
| **Cross-device sync** | Sync antar HP/device | ✅ |
| **One-click restore** | Restore semua dalam 1 command | ✅ |
| **Memory health** | Cek integritas memory | ✅ |
| **Conflict resolver** | Handle merge conflicts | ✅ |
| **Selective backup** | Pilih file mana yang di-backup | ✅ |

## 📁 Yang Di-Backup

```
~/.hermes/
├── memories/
│   ├── MEMORY.md              ✅
│   ├── User Profile.md        ✅
│   ├── Tools Reference.md     ✅
│   ├── Config Reference.md    ✅
│   ├── Network Setup.md       ✅
│   └── Sessions/              ✅
├── skills/                    ✅
├── config.yaml                ✅
└── memory_store.db            ✅ (encrypted)
```

## 🔐 Keamanan

```
GitHub Private Repo:
├── ✅ Hanya kamu yang bisa akses
├── ✅ SSH key per device
├── ✅ Token tidak di-push
├── ✅ .gitignore untuk file sensitif
└── ✅ Encryption untuk database
```

## 📖 Documentation

- [Installation Guide](docs/INSTALL.md)
- [Configuration](docs/CONFIG.md)
- [Troubleshooting](docs/TROUBLESHOOT.md)
- [Architecture](docs/ARCHITECTURE.md)

## 🤝 Contributing

Open for contributions! Fork, create branch, PR.

## 📄 License

MIT License - Free to use

## ⭐ Support

If this helps you, give a ⭐ on GitHub!

---

*Created by [krm-z4phkiel](https://github.com/krm-z4phkiel)*
*Made with ❤️ for Termux community*
