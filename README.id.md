<p align="center">

# 🧠 termuxlmy

</p>

<p align="center">
  <strong>Local Memory for AI Agents on Termux</strong>
  <br/>
  <em>Buat AI Agent punya ingatan seperti manusia — asosiatif, persisten, 100% lokal</em>
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
  <a href="README.en.md">English</a> &bull;
  <a href="#-sebelum--sesudah">Before/After</a> &bull;
  <a href="#-fitur">Fitur</a> &bull;
  <a href="#-instalasi">Instalasi</a> &bull;
  <a href="#-cara-pakai">Cara Pakai</a> &bull;
  <a href="#-kompatibilitas">Kompatibilitas</a> &bull;
  <a href="#-faq">FAQ</a> &bull;
  <a href="#-kontribusi">Kontribusi</a>
</p>

---

## 🤔 Masalah

Kamu pakai AI Agent — Hermes, Ollama, LangChain, atau yang lain.

Setiap kali chat baru:

```
Kamu: "Hai, nama saya Andi"
AI:   "Halo Andi!"

[sesi baru]

Kamu: "Hai, nama saya..."
AI:   "Siapa nama kamu?"
```

> *"Bayangkan punya teman yang setiap kali ketemu bertanya:*
> *'Siapa nama kamu?' — Itulah AI tanpa memory."*

---

## 🔧 Sebelum / Sesudah

### Sebelum (AI tanpa termuxlmy)

```
Kamu:  "Buat function untuk hitung diskon"
AI:    *install 3 library baru*
       *buat 50 baris code*
       *tambah abstract factory pattern*
       
Result: Over-engineered, boros token, lambat
```

### Sesudah (AI dengan termuxlmy)

```
Kamu:  "Buat function untuk hitung diskon"
AI:    *recall: user suka code minimal*
       *recall: project pakai Python stdlib*
       *tulis 3 baris*

Result: Simple, cepat, sesuai preferensi
```

| Metric | Tanpa termuxlmy | Dengan termuxlmy |
|--------|----------------|------------------|
| **Ingatan** | ❌ Lupa setiap sesi | ✅ Ingat selamanya |
| **Preferensi** | ❌ Tebak-tebakan | ✅ Tersimpan |
| **Fakta** | ❌ Hilang | ✅ Persisten |
| **Koneksi** | ❌ Tidak ada | ✅ Associative |
| **Biaya** | 💸 Boros token | 💰 Hemat token |

---

## ✨ Fitur

| Fitur | Deskripsi |
|-------|-----------|
| 🧠 **Holographic Memory** | SQLite + FTS5 + trust scoring — seperti otak manusia |
| 🔗 **Knowledge Graph** | Fakta saling terhubung — "apel" → "merah", "buah", "Newton" |
| 👤 **Entity Resolution** | Auto-detect orang, tools, tempat dari percakapan |
| 🔍 **Full-text Search** | Cari ingatan dengan cepat menggunakan FTS5 |
| 📊 **Trust Scoring** | Fakta dinilai kebenarannya — tidak semua info sama |
| 🔄 **Auto-extract** | Otomatis ekstrak fakta dari percakapan |
| 📁 **Markdown-based** | Mudah dibaca & diedit manual oleh manusia |
| 🔐 **Encryption** | Enkripsi database dengan AES-256 (opsional) |
| ☁️ **GitHub Backup** | Sync ke GitHub private repo (opsional) |
| 📱 **Termux Native** | Dibuat khusus untuk Android/Termux |

---

## 🧠 Bagaimana Cara Kerjanya

```
SEBELUM termuxlmy:
╔══════════════════════════════════════╗
║  USER  →  AI AGENT  →  JAWABAN     ║
║          (lupa semua)               ║
╚══════════════════════════════════════╝

SESUDAH termuxlmy:
╔══════════════════════════════════════╗
║  USER  →  AI AGENT  →  JAWABAN     ║
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

### Analogi: Otak Manusia

```
Ketika kamu dengar "apel":
  🍎 Apel → 🔴 Merah
           → 🍬 Manis
           → 🌳 Pohon
           → 🍎 Buah
           → 🍎 Newton

Itulah MEMORY ASOSIATIF — dan termuxlmy memberikannya ke AI.
```

---

## 📦 Instalasi

### Prasyarat

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

## 🚀 Cara Pakai

### Commands

```bash
termuxlmy                   # Menu interaktif (pilih pakai angka)
termuxlmy setup             # Inisialisasi memory
termuxlmy status            # Cek status
termuxlmy add "fakta"       # Tambah fakta
termuxlmy search "query"    # Cari ingatan
termuxlmy encrypt           # Enkripsi database
termuxlmy decrypt           # Dekripsi database
termuxlmy backup            # Backup ke GitHub
termuxlmy setup-backup      # Setup GitHub backup
termuxlmy test              # Jalankan test
termuxlmy help              # Tampilkan bantuan
```

> **Tips:** Cukup ketik `termuxlmy` untuk buka menu interaktif — tidak perlu hafal perintah!

### Contoh Penggunaan

```bash
$ termuxlmy status
🧠 termuxlmy Status
├── Memory: 7 files
├── Database: 155 KB
├── Facts: 14
├── Entities: 19
└── Relationships: 14

$ termuxlmy add "User adalah mahasiswa TI"
✅ Added: User adalah mahasiswa TI

$ termuxlmy search "mahasiswa"
[manual] User adalah mahasiswa TI (trust: 0.5)
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

**Q: Kenapa pakai SQLite?**
> SQLite adalah database paling populer di dunia. Ringan, cepat, tidak butuh server.

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
  Dibuat untuk komunitas Termux & AI
  <br/>
  <br/>
  <a href="https://github.com/krm-z4phkiel/termuxlmy">
    <img alt="GitHub" src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/>
  </a>
</p>
