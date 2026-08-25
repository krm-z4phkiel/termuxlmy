<p align="center" style="text-align: center">

# 🧠 termuxlmy

</p>

<p align="center">
  <strong>Local Memory System for AI Agents on Termux</strong>
  <br/>
  <em>Buat AI Agent punya ingatan seperti manusia — asosiatif, persisten, dan 100% lokal</em>
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
  <a href="#-fitur">Fitur</a> •
  <a href="#-masalah">Masalah</a> •
  <a href="#-solusi">Solusi</a> •
  <a href="#-instalasi">Instalasi</a> •
  <a href="#-cara-pakai">Cara Pakai</a> •
  <a href="#-kompatibilitas">Kompatibilitas</a> •
  <a href="#-kontribusi">Kontribusi</a>
</p>

---

## 🎯 Masalah

```
Kamu pakai AI Agent (Hermes, Ollama, dll)
│
├── 😩 Setiap chat mulai dari nol
├── 😩 AI tidak ingat nama kamu
├── 😩 AI tidak ingat percakapan kemarin
├── 😩 Kamu harus jelaskan ulang setiap kali
└── 😩 Semua ingatan hilang saat session baru
```

> **Analogi:** Bayangkan punya teman yang setiap kali ketemu bertanya:
> *"Siapa nama kamu?"* — Itulah AI tanpa memory.

---

## 💡 Solusi

**termuxlmy** memberikan AI Agent ingatan seperti manusia:

```
🧠 Asosiatif     → Satu fakta terhubung ke fakta lainnya
💾 Persisten     → Tidak pernah lupa, tersimpan selamanya
🔒 Lokal         → Data tetap di HP kamu, tidak ke cloud
🔍 Smart Search  → Cari ingatan dengan full-text search
⚡ Gratis        → Tanpa API key, tanpa cloud service
```

---

## ✨ Fitur

| Fitur | Deskripsi |
|-------|-----------|
| 🧠 **Holographic Memory** | SQLite + FTS5 + trust scoring |
| 🔗 **Knowledge Graph** | Fakta saling terhubung seperti otak |
| 👤 **Entity Resolution** | Auto-detect orang, tools, tempat |
| 🔗 **Cross-linking** | File memory saling referensi |
| 📊 **Trust Scoring** | Fakta dinilai kebenarannya |
| 🔄 **Auto-extract** | Otomatis ekstrak dari percakapan |
| 🔍 **Full-text Search** | Cari ingatan dengan cepat |
| 📁 **Markdown-based** | Mudah dibaca & diedit manual |
| 🔐 **Encryption** | Enkripsi database (opsional) |
| ☁️ **GitHub Backup** | Sync ke GitHub (opsional) |

---

## 🏗️ Arsitektur

```
┌─────────────────────────────────────────────┐
│              AI AGENT                       │
│     (Hermes, Ollama, LangChain, dll)        │
└──────────────────┬──────────────────────────┘
                   │
        ┌──────────▼──────────┐
        │    termuxlmy        │
        │   Memory Layer      │
        ├─────────────────────┤
        │ Working Memory      │ ← Percakapan sekarang
        │ Episodic Memory     │ ← Kejadian masa lalu
        │ Semantic Memory     │ ← Pengetahuan umum
        │ Knowledge Graph     │ ← Hubungan antar fakta
        └──────────┬──────────┘
                   │
        ┌──────────▼──────────┐
        │   LOCAL STORAGE     │
        │   SQLite + Files    │
        │   Di HP kamu saja   │
        └─────────────────────┘
```

---

## 📦 Instalasi

### Prasyarat

| Package | Fungsi | Size |
|---------|--------|------|
| [Termux](https://f-droid.org/en/packages/com.termux/) | Terminal emulator | 30 MB |
| Python 3 | Runtime utama | 50 MB |
| Git | Version control | 10 MB |

### Quick Install

```bash
# 1. Install dependencies
pkg update && pkg upgrade -y
pkg install python git curl -y

# 2. Install termuxlmy
bash <(curl -s https://raw.githubusercontent.com/krm-z4phkiel/termuxlmy/main/install.sh)

# 3. Setup
termuxlmy setup
```

### Manual Install

```bash
git clone https://github.com/krm-z4phkiel/termuxlmy.git
cd termuxlmy
bash install.sh
```

---

## 🚀 Cara Pakai

### CLI Commands

```bash
# Setup pertama kali
termuxlmy setup

# Cek status
termuxlmy status

# Tambah fakta
termuxlmy add "User adalah mahasiswa TI"

# Cari ingatan
termuxlmy search "mahasiswa"
```

### Contoh Penggunaan

```
$ termuxlmy setup
🧠 Setting up termuxlmy...
✅ Database initialized!
✅ Setup complete!

$ termuxlmy status
🧠 termuxlmy Status
├── Memory: 7 files
├── Database: 155 KB
├── Facts: 14
├── Entities: 19
└── Relationships: 14

$ termuxlmy add "Hermes runs on Android 16"
✅ Added: Hermes runs on Android 16

$ termuxlmy search "Hermes"
[system] Hermes runs on Android 16 (trust: 0.5)
[tools] Hermes gateway runs on port 3000 (trust: 0.5)
```

### Struktur Memory

```
~/.hermes/
├── memories/
│   ├── MEMORY.md              ← Central hub
│   ├── User Profile.md        ← Info user
│   ├── Tools Reference.md     ← Tools
│   ├── Config Reference.md    ← Settings
│   └── Sessions/
│       └── 2026-08-25.md      ← Daily log
├── memory_store.db            ← Database
└── config.yaml                ← Config
```

---

## 🔍 Kompatibilitas

### ✅ Agent yang Kompatibel

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

### ❌ Agent yang Tidak Kompatibel

| Agent | Alasan |
|-------|--------|
| ChatGPT (API) | Cloud-only, tidak ada akses file |
| Claude (API) | Cloud-only, tidak bisa baca file local |
| Gemini (Web) | Tidak punya filesystem access |
| Copilot | Cloud-based, no local storage |
| Perplexity | Search engine, bukan agent |
| Poe | Chat aggregator, no file access |
| Character.AI | Entertainment, no memory system |

### 🔑 Syarat Kompatibilitas

```
Agent HARUS punya:
├── ✅ File System Access (baca + tulis)
├── ✅ Terminal/Shell Access
├── ✅ Python Runtime (untuk SQLite)
└── ✅ Network Access (optional)

Intinya: Selama agent bisa baca file & jalankan Python,
         agent bisa pakai termuxlmy!
```

---

## 🤔 FAQ

**Q: Apakah data saya aman?**
> Ya! Semua data tersimpan lokal di HP kamu. Tidak ada yang dikirim ke cloud (kecuali kamu backup manual).

**Q: Berapa RAM yang dibutuhkan?**
> Minimal 2 GB RAM. termuxlmy menggunakan ~100-200 MB.

**Q: Bisa dipakai dengan AI selain Hermes?**
> Bisa! System ini universal. Lihat [kompatibilitas](#-kompatibilitas).

**Q: Apakah gratis?**
> Ya! 100% gratis. Tidak butuh API key, tidak butuh cloud service.

**Q: Bagaimana backup data?**
> Gunakan `termuxlmy backup` untuk sync ke GitHub (private repo).

---

## 🤝 Kontribusi

Kontribusi sangat dipersilakan!

1. Fork repository ini
2. Buat branch baru (`git checkout -b fitur-baru`)
3. Commit perubahan (`git commit -m 'Tambah fitur baru'`)
4. Push ke branch (`git push origin fitur-baru`)
5. Buka Pull Request

---

## 📄 License

MIT License — Lihat [LICENSE](LICENSE) untuk detail.

---

<p align="center">
  Dibuat dengan ❤️ untuk komunitas Termux & AI
  <br/>
  <br/>
  <a href="https://github.com/krm-z4phkiel/termuxlmy">
    <img alt="GitHub" src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>
