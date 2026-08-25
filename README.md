<p align="center">

# 🧠 termuxlmy

</p>

<p align="center">
  <strong>Local Memory for AI Agents on Termux</strong>
  <br/>
  <em>Give your AI agent human-like memory — associative, persistent, 100% local</em>
  <br/>
  <br/>
  <a href="https://github.com/krm-z4phkiel/termuxlmy/blob/main/LICENSE">
    <img alt="License" src="https://img.shields.io/github/license/krm-z4phkiel/termuxlmy?style=flat-square"/>
  </a>
  <a href="https://github.com/krm-z4phkiel/termuxlmy/stargazers">
    <img alt="Stars" src="https://img.shields.io/github/stars/krm-z4phkiel/termuxlmy?style=flat-square"/>
  </a>
  <a href="https://github.com/krm-z4phkiel/termuxlmy/issues">
    <img alt="Issues" src="https://img.shields.io/github/issues/krm-z4phkiel/termuxlmy?style=flat-square"/>
  </a>
  <a href="https://github.com/krm-z4phkiel/termuxlmy/forks">
    <img alt="Forks" src="https://img.shields.io/github/forks/krm-z4phkiel/termuxlmy?style=flat-square"/>
  </a>
</p>

<p align="center">
  <sub><strong>🧠 100% Local</strong> &middot; <strong>🔒 Private</strong> &middot; <strong>⚡ Zero Cost</strong> &middot; <strong>🔗 Associative</strong></sub>
</p>

<p align="center">
  <a href="README.id.md">Bahasa Indonesia</a> &bull;
  <a href="#-before--after">Before/After</a> &bull;
  <a href="#-features">Features</a> &bull;
  <a href="#-installation">Install</a> &bull;
  <a href="#-usage">Usage</a> &bull;
  <a href="#-compatibility">Compatibility</a> &bull;
  <a href="#-faq">FAQ</a> &bull;
  <a href="#-contributing">Contributing</a>
</p>

---

## 😩 The Problem

You use an AI Agent — Hermes, Ollama, LangChain, or anything else.

Every new chat session:

```
You:  "Hi, my name is Andi"
AI:   "Hello Andi!"

[session restart]

You:  "Hi, my name is..."
AI:   "What's your name?"
```

> *"Imagine having a friend who asks you every time you meet:*
> *"What's your name?" — That's AI without memory."*

---

## 🔧 Before / After

### Before (AI without termuxlmy)

```
You:  "Build a function to calculate discounts"
AI:   *installs 3 new libraries*
      *writes 50 lines of code*
      *adds abstract factory pattern*
      
Result: Over-engineered, wasteful, slow
```

### After (AI with termuxlmy)

```
You:  "Build a function to calculate discounts"
AI:   *recalls: user prefers minimal code*
      *recalls: project uses Python stdlib*
      *writes 3 lines*

Result: Simple, fast, matches preferences
```

| Metric | Without termuxlmy | With termuxlmy |
|--------|-------------------|----------------|
| **Memory** | ❌ Forgets every session | ✅ Remembers forever |
| **Preferences** | ❌ Guessing game | ✅ Stored |
| **Facts** | ❌ Lost | ✅ Persistent |
| **Connections** | ❌ None | ✅ Associative |
| **Cost** | 💸 Wastes tokens | 💰 Saves tokens |

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🧠 **Holographic Memory** | SQLite + FTS5 + trust scoring — like a human brain |
| 🔗 **Knowledge Graph** | Facts connect to each other — "apple" → "red", "fruit", "Newton" |
| 👤 **Entity Resolution** | Auto-detect people, tools, places from conversation |
| 🔍 **Full-text Search** | Search memories fast using FTS5 |
| 📊 **Trust Scoring** | Facts rated by reliability — not all info is equal |
| 🔄 **Auto-extract** | Automatically extract facts from conversations |
| 📁 **Markdown-based** | Easy to read & edit manually by humans |
| 🔐 **Encryption** | AES-256 database encryption (optional) |
| ☁️ **GitHub Backup** | Sync to GitHub private repo (optional) |
| 📱 **Termux Native** | Built specifically for Android/Termux |

---

## 🧠 How It Works

```
WITHOUT termuxlmy:
╔══════════════════════════════════════╗
║  USER  →  AI AGENT  →  ANSWER      ║
║          (forgets everything)       ║
╚══════════════════════════════════════╝

WITH termuxlmy:
╔══════════════════════════════════════╗
║  USER  →  AI AGENT  →  ANSWER      ║
║              ↕                      ║
║         🧠 termuxlmy               ║
║         ┌─────────────┐            ║
║         │ Memory      │            ║
║         │ ├── Facts   │            ║
║         │ ├── Entities│            ║
║         │ └── Graph   │            ║
║         └─────────────┘            ║
╚══════════════════════════════════════╝
```

### Analogy: The Human Brain

```
When you hear "apple":
  🍎 Apple → 🔴 Red
            → 🍬 Sweet
            → 🌳 Tree
            → 🍎 Fruit
            → 🍎 Newton

That's ASSOCIATIVE MEMORY — and termuxlmy gives it to your AI.
```

---

## 📦 Installation

### Prerequisites

```bash
# Update system
pkg update && pkg upgrade -y

# Install dependencies
pkg install python git curl -y
```

### Quick Install

```bash
# One-line install
bash <(curl -s https://raw.githubusercontent.com/krm-z4phkiel/termuxlmy/main/install.sh)
```

### Manual Install

```bash
# Clone
git clone https://github.com/krm-z4phkiel/termuxlmy.git
cd termuxlmy

# Install
bash install.sh

# Setup
termuxlmy setup
```

---

## 🚀 Usage

### Commands

```bash
termuxlmy setup          # Initialize memory
termuxlmy status         # Check status
termuxlmy add "fact"     # Add a fact
termuxlmy search "query" # Search memories
termuxlmy backup         # Backup to GitHub
```

### Example

```bash
$ termuxlmy status
🧠 termuxlmy Status
├── Memory: 7 files
├── Database: 155 KB
├── Facts: 14
├── Entities: 19
└── Relationships: 14

$ termuxlmy add "User is a CS student"
✅ Added: User is a CS student

$ termuxlmy search "student"
[manual] User is a CS student (trust: 0.5)
```

### Memory Structure

```
~/.hermes/
├── memories/
│   ├── MEMORY.md              ← Central hub
│   ├── User Profile.md        ← User info
│   ├── Tools Reference.md     ← Tools
│   ├── Config Reference.md    ← Settings
│   └── Sessions/
│       └── 2026-08-25.md      ← Daily log
├── memory_store.db            ← Database
└── config.yaml                ← Config
```

---

## 🔍 Compatibility

### ✅ Compatible Agents

| Agent | Platform | Status |
|-------|----------|--------|
| [Hermes](https://github.com/nousresearch/hermes-agent) | Termux/Android | ✅ |
| [Ollama](https://ollama.ai) | Local PC/Server | ✅ |
| [LangChain](https://langchain.com) | Framework | ✅ |
| [AutoGPT](https://github.com/Significant-Gravitas/AutoGPT) | Local | ✅ |
| [Open Interpreter](https://github.com/OpenInterpreter/open-interpreter) | Terminal | ✅ |
| [PrivateGPT](https://github.com/zylon-ai/private-gpt) | Local | ✅ |
| [AnythingLLM](https://github.com/Mintplex-Labs/anything-llm) | Local | ✅ |
| [LM Studio](https://lmstudio.ai) | Local | ✅ |
| Custom Agent (Python) | Any | ✅ |

### ❌ Incompatible Agents

| Agent | Reason |
|-------|--------|
| ChatGPT (API) | Cloud-only, no file access |
| Claude (API) | Cloud-only, can't read local files |
| Gemini (Web) | No filesystem access |
| Copilot | Cloud-based, no local storage |
| Perplexity | Search engine, not an agent |
| Poe | Chat aggregator, no file access |

### 🔑 Compatibility Requirements

```
Agent MUST have:
├── ✅ File System Access (read + write)
├── ✅ Terminal/Shell Access
├── ✅ Python Runtime (for SQLite)
└── ✅ Network Access (optional)

Bottom line: If the agent can read files & run Python,
             it can use termuxlmy!
```

---

## 🤔 FAQ

**Q: Is my data safe?**
> Yes! All data is stored locally on your phone. Nothing is sent to the cloud (unless you manually backup to GitHub).

**Q: How much RAM does it need?**
> Minimum 2 GB RAM. termuxlmy uses ~100-200 MB.

**Q: Can I use it with AI other than Hermes?**
> Yes! This system is universal. See [compatibility](#-compatibility).

**Q: Is it free?**
> Yes! 100% free. No API keys needed, no cloud service required.

**Q: How do I backup my data?**
> Use `termuxlmy backup` to sync to GitHub (private repo).

**Q: Why SQLite?**
> SQLite is the world's most popular database. Lightweight, fast, no server required.

---

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository
2. Create a new branch (`git checkout -b feature-new`)
3. Commit your changes (`git commit -m 'Add new feature'`)
4. Push to the branch (`git push origin feature-new`)
5. Open a Pull Request

---

## 📄 License

MIT License — See [LICENSE](LICENSE) for details.

---

<p align="center">
  Built for the Termux & AI community
  <br/>
  <br/>
  <a href="https://github.com/krm-z4phkiel/termuxlmy">
    <img alt="GitHub" src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>
