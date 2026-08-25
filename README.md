# 🧠 termuxlmy

> **Local Memory for You** — Sistem ingatan lokal untuk AI Agent di Termux

```
 ╔════════════════════════════════════════════════════╗
 ║  🧠  TERMUX LMY                                   ║
 ║  Local Memory for You                              ║
 ║                                                    ║
 ║  Buat AI Agent punya ingatan seperti manusia:      ║
 ║  ✅ Asosiatif — satu fakta terhubung ke lainnya    ║
 ║  ✅ Persisten — tidak pernah lupa                  ║
 ║  ✅ Lokal — data tetap di HP kamu                  ║
 ║  ✅ Gratis — tanpa API key, tanpa cloud            ║
 ╚════════════════════════════════════════════════════╝
```

---

## 🤔 Latar Belakang Masalah

### Masalahnya

```
Kamu pakai AI Agent (Hermes, ChatGPT, Claude, dll)
├── Setiap chat mulai dari nol
├── AI tidak ingat percakapan kemarin
├── AI tidak ingat nama kamu
├── AI tidak ingat preferensi kamu
├── Semua ingatan hilang saat session baru
└── Kamu harus jelaskan ulang setiap kali
```

**Analogi:**
```
Bayangkan punya teman yang setiap kali ketemu:
"Siapa nama kamu?"
"Kamu kerja di mana?"
"Kemarin kita bahas apa ya?"

Itulah AI tanpa memory — FRUSTASI! 😤
```

### Kenapa Ini Terjadi?

```
AI modern (LLM) hanya punya:
├── 📝 Working memory (context window) → terbatas, sementara
├── ❌ Tidak ada long-term memory
├── ❌ Tidak ada persistent storage
└── ❌ Tidak ada associative memory

Setiap session = mulai dari kosong
```

### Solusi: termuxlmy

```
termuxlmy memberikan AI Agent:
├── 🧠 Long-term memory → ingat selamanya
├── 🔗 Associative memory → fakta saling terhubung
├── 💾 Persistent storage → data tersimpan lokal
├── 🔍 Smart retrieval → ambil informasi relevan
└── 🔒 Private → data tetap di HP kamu
```

---

## 💡 Solusi: Bagaimana Cara Kerjanya

### Konsep: Ingatan Manusia vs AI

```
MANUSIA:
apel → merah, manis, buah, pohon, Newton
↑ semua terhubung secara otomatis

AI TANPA MEMORY:
apel → ... (tidak ingat apapun)

AI DENGAN TERMUX LMY:
apel → merah, manis, buah, pohon, Newton
↑ semua terhubung via knowledge graph
```

### Arsitektur

```
┌─────────────────────────────────────────────┐
│              AI AGENT (Hermes)              │
│         Chat, Tools, Skills, etc            │
└──────────────────┬──────────────────────────┘
                   │
        ┌──────────▼──────────┐
        │    TERMUX LMY       │
        │   Memory Layer      │
        ├─────────────────────┤
        │ 1. Working Memory   │ ← Percakapan sekarang
        │ 2. Episodic Memory  │ ← Kejadian masa lalu
        │ 3. Semantic Memory  │ ← Pengetahuan umum
        │ 4. Knowledge Graph  │ ← Hubungan antar fakta
        └──────────┬──────────┘
                   │
        ┌──────────▼──────────┐
        │   LOCAL STORAGE     │
        │   (SQLite + Files)  │
        │   Di HP kamu saja   │
        └─────────────────────┘
```

### Fitur Utama

| Fitur | Deskripsi | Keunggulan |
|-------|-----------|------------|
| **Holographic Memory** | SQLite + FTS5 + trust scoring | Cepat, lokal, gratis |
| **Knowledge Graph** | Fakta saling terhubung | Asosiatif seperti otak |
| **Entity Resolution** | Auto-detect orang, tools, tempat | Smart extraction |
| **Cross-linking** | File memory saling referensi | Integrated knowledge |
| **Trust Scoring** | Fakta dinilai kebenarannya | Reliable information |
| **Auto-extract** | Otomatis ekstrak dari percakapan | Hands-free |

---

## 📦 Bahan-Bahan Yang Perlu Di-Install

### Wajib (Core)

| No | Package | Fungsi | Size |
|----|---------|--------|------|
| 1 | **Termux** | Terminal emulator | 30 MB |
| 2 | **Python 3** | Runtime utama | 50 MB |
| 3 | **Node.js** | Untuk npm packages | 40 MB |
| 4 | **Git** | Version control | 10 MB |

### Memory System

| No | Package | Fungsi | Size |
|----|---------|--------|------|
| 5 | **SQLite** | Database (sudah ada di Python) | 0 MB |
| 6 | **FTS5** | Full-text search (built-in SQLite) | 0 MB |

### Optional (Recommended)

| No | Package | Fungsi | Size |
|----|---------|--------|------|
| 7 | **Termux:API** | Notifikasi, wake lock | 5 MB |
| 8 | **Termux:Boot** | Auto-start on boot | 2 MB |
| 9 | **Curl** | Download, API calls | 3 MB |
| 10 | **OpenSSL** | Encryption | 5 MB |

### Total Size

```
Wajib:     ~130 MB
Optional:  ~15 MB
Total:     ~145 MB
```

---

## 🚀 Cara Pemasangan

### Langkah 1: Install Termux

Download dari **F-Droid** (bukan Play Store!):

```
https://f-droid.org/en/packages/com.termux/
```

### Langkah 2: Update System

```bash
pkg update && pkg upgrade -y
```

### Langkah 3: Install Dependencies

```bash
pkg install python git curl openssl-tool -y
```

### Langkah 4: Install termuxlmy

**One-line install:**

```bash
bash <(curl -s https://raw.githubusercontent.com/krm-z4phkiel/termuxlmy/main/install.sh)
```

**Atau manual:**

```bash
# Clone repo
git clone https://github.com/krm-z4phkiel/termuxlmy.git
cd termuxlmy

# Run installer
bash install.sh
```

### Langkah 5: Setup Memory

```bash
termuxlmy setup
```

Ini akan:
1. Buat folder memory di `~/.hermes/memories/`
2. Inisialisasi SQLite database
3. Setup knowledge graph
4. Konfigurasi auto-extract

### Langkah 6: Verifikasi

```bash
termuxlmy status
```

Harusnya menunjukkan:
```
🧠 termuxlmy Status
├── Memory: ✅ Active (14 facts)
├── Knowledge Graph: ✅ Active (19 entities)
├── Cross-links: ✅ 28 connections
├── Database: ✅ ~150 KB
└── Auto-extract: ✅ ON
```

---

## 🧠 Cara Membuat Agent AI Punya Ingatan Local

### Konsep Dasar

```
Agent AI kamu (Hermes/ lainnya) perlu:
1. Memory files → simpan fakta
2. Knowledge graph → hubungkan fakta
3. Auto-extract → ekstrak dari percakapan
4. Retrieval → ambil saat dibutuhkan
```

### Step-by-Step

#### 1. Buat Memory Structure

```bash
# Buat folder memory
mkdir -p ~/.hermes/memories/Sessions

# Buat file utama
cat > ~/.hermes/memories/MEMORY.md << 'EOF'
# 🧠 Memory Hub

## 👤 User
- Nama: [nama kamu]
- Preferensi: [yang kamu suka]

## 🔧 Tools
- [tools yang kamu pakai]

## 📝 Catatan
- [fakta penting]
EOF
```

#### 2. Setup Holographic Database

```python
# Simpan sebagai setup_memory.py
import sqlite3
import os

DB_PATH = os.path.expanduser("~/.hermes/memory_store.db")

conn = sqlite3.connect(DB_PATH)
c = conn.cursor()

# Buat tabel
c.execute('''CREATE TABLE IF NOT EXISTS facts (
    fact_id INTEGER PRIMARY KEY AUTOINCREMENT,
    content TEXT NOT NULL,
    category TEXT,
    tags TEXT,
    trust_score REAL DEFAULT 0.5,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)''')

c.execute('''CREATE TABLE IF NOT EXISTS entities (
    entity_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    entity_type TEXT,
    aliases TEXT
)''')

c.execute('''CREATE TABLE IF NOT EXISTS fact_entities (
    fact_id INTEGER,
    entity_id INTEGER,
    FOREIGN KEY (fact_id) REFERENCES facts(fact_id),
    FOREIGN KEY (entity_id) REFERENCES entities(entity_id)
)''')

conn.commit()
conn.close()
print("✅ Database initialized!")
```

#### 3. Tambah Fakta Pertama

```python
# Simpan sebagai add_fact.py
import sqlite3
import os

DB_PATH = os.path.expanduser("~/.hermes/memory_store.db")

def add_fact(content, category="general"):
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()
    c.execute("INSERT INTO facts (content, category) VALUES (?, ?)",
              (content, category))
    conn.commit()
    conn.close()
    print(f"✅ Added: {content[:50]}...")

# Contoh penggunaan
add_fact("User adalah mahasiswa TI", "user")
add_fact("Hermes runs on Android 16 Termux", "system")
add_fact("RTK saves tokens via ~/bin/rtk", "tools")
```

#### 4. Setup Knowledge Graph (Cross-linking)

```bash
# Tambah wikilinks di file memory
cat >> ~/.hermes/memories/MEMORY.md << 'EOF'

## 🔗 Links
- → [[User Profile]] — Info user
- → [[Tools Reference]] — Semua tools
- → [[Config Reference]] — Settings
EOF
```

#### 5. Auto-Extract dari Percakapan

```python
# Simpan sebagai auto_extract.py
import sqlite3
import os
import re

DB_PATH = os.path.expanduser("~/.hermes/memory_store.db")

def extract_and_store(text):
    """Ekstrak fakta dari teks dan simpan ke database"""
    
    # Simple pattern matching
    patterns = [
        (r"nama saya (\w+)", "user"),
        (r"saya (\w+)", "user"),
        (r"device (\w+)", "system"),
        (r"ip (\d+\.\d+\.\d+\.\d+)", "network"),
    ]
    
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()
    
    for pattern, category in patterns:
        matches = re.findall(pattern, text, re.IGNORECASE)
        for match in matches:
            c.execute("INSERT INTO facts (content, category) VALUES (?, ?)",
                     (f"Extracted: {match}", category))
    
    conn.commit()
    conn.close()
```

#### 6. Retrieval (Ambil Ingatan)

```python
# Simpan sebagai recall.py
import sqlite3
import os

DB_PATH = os.path.expanduser("~/.hermes/memory_store.db")

def recall(query):
    """Cari fakta yang relevan"""
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()
    
    # Full-text search
    c.execute("""
        SELECT content, category, trust_score 
        FROM facts 
        WHERE content LIKE ? 
        ORDER BY trust_score DESC 
        LIMIT 5
    """, (f"%{query}%",))
    
    results = c.fetchall()
    conn.close()
    
    return results

# Contoh
facts = recall("user")
for content, category, trust in facts:
    print(f"[{category}] {content} (trust: {trust})")
```

---

## 📁 Struktur Memory Final

```
~/.hermes/
├── memories/
│   ├── MEMORY.md              ← Central hub
│   ├── User Profile.md        ← Info user
│   ├── Tools Reference.md     ← Tools documentation
│   ├── Config Reference.md    ← Settings
│   ├── Network Setup.md       ← Network info
│   ├── System Setup.md        ← System info
│   ├── Communication Setup.md ← Channel setup
│   └── Sessions/
│       └── 2026-08-25.md      ← Daily log
├── memory_store.db            ← Holographic database
└── config.yaml                ← Hermes config
```

---

## 🔗 Contoh Knowledge Graph

```
bayue (person)
├── mahasiswa TI
├── HP: POCO X3 Pro
└── IP: 192.168.1.14

hermes (tool)
├── runs on Android 16
├── memory limit: 8000
└── 15 skills installed

rtk (tool)
├── saves 982 tokens
├── 28 commands
└── used by hermes

telegram (platform)
├── channel: 5513484052
└── connected to hermes
```

---

## 📖 Dokumentasi

- [Installation Guide](docs/INSTALL.md)
- [Configuration](docs/CONFIG.md)
- [Memory Architecture](docs/ARCHITECTURE.md)
- [Troubleshooting](docs/TROUBLESHOOT.md)

---


---

## 🔍 Kompatibilitas Agent AI

### ✅ Agent YANG BISA Pakai termuxlmy

| Agent | Platform | Akses File | Status |
|-------|----------|-----------|--------|
| **Hermes** | Termux/Android | ✅ Full | ✅ Compatible |
| **Ollama** | Local PC/Server | ✅ Full | ✅ Compatible |
| **LangChain** | Framework | ✅ Full | ✅ Compatible |
| **AutoGPT** | Local | ✅ Full | ✅ Compatible |
| **Open Interpreter** | Terminal | ✅ Full | ✅ Compatible |
| **PrivateGPT** | Local | ✅ Full | ✅ Compatible |
| **AnythingLLM** | Local | ✅ Full | ✅ Compatible |
| **LM Studio** | Local | ✅ Full | ✅ Compatible |
| **LocalAI** | Local | ✅ Full | ✅ Compatible |
| **Custom Agent** | Any (Python) | ✅ Full | ✅ Compatible |

### ❌ Agent YANG TIDAK BISA Pakai termuxlmy

| Agent | Alasan | Solusi Alternatif |
|-------|--------|-------------------|
| **ChatGPT (API)** | Cloud-only, tidak ada akses file local | Pakai ChatGPT Plus + Code Interpreter |
| **Claude (API)** | Cloud-only, tidak bisa baca file kamu | Pakai Claude Projects (limited) |
| **Gemini (Web)** | Tidak punya filesystem access | N/A |
| **Copilot (GitHub)** | Cloud-based, no local storage | N/A |
| **Perplexity** | Search engine, bukan agent | N/A |
| **Poe** | Chat aggregator, no file access | N/A |
| **Character.AI** | Entertainment, no memory system | N/A |
| **Replika** | Social companion, no file access | N/A |
| **Kuki** | Chatbot, no filesystem | N/A |
| **Chatbase** | Custom chatbot builder, cloud | N/A |
| **Botpress** | Cloud platform, limited local | N/A |

### 🔑 Syarat Agent Bisa Pakai termuxlmy

```
Agent HARUS punya:
├── ✅ File System Access (baca + tulis file)
├── ✅ Terminal/Shell Access (jalankan script)
├── ✅ Python Runtime (untuk SQLite)
└── ✅ Network Access (optional, untuk sync)

Agent TIDAK BISA jika:
├── ❌ Hanya cloud-based (API saja)
├── ❌ Tidak punya akses filesystem
├── ❌ Tidak bisa jalankan script
└── ❌ Hanya web interface
```

### 💡 Kenapa Ini Penting?

```
termuxlmy menggunakan:
├── 📁 SQLite database → Universal format
├── 📝 Markdown files → Universal format  
├── 🐍 Python scripts → Universal runtime
└── 🔧 Shell commands → Universal CLI

Intinya: Selama agent bisa baca file & jalankan Python,
         agent bisa pakai termuxlmy!
```

### 🌐 Skenario Penggunaan

```
LOCAL SETUP (Recommended):
┌─────────────────────────────────┐
│ HP/PC/Server kamu               │
│ ├── AI Agent (Ollama/Hermes)    │
│ ├── termuxlmy (memory system)   │
│ └── SQLite DB (local)           │
│                                 │
│ ✅ Data tetap di device kamu    │
│ ✅ Gratis                        │
│ ✅ Private                       │
└─────────────────────────────────┘

CLOUD API (Tidak Compatible):
┌─────────────────────────────────┐
│ Cloud Server                    │
│ ├── ChatGPT/Claude API          │
│ └── Tidak ada akses ke HP kamu  │
│                                 │
│ ❌ Tidak bisa baca file local   │
│ ❌ Tidak bisa simpan ke SQLite  │
│ ❌ Data di cloud mereka         │
└─────────────────────────────────┘
```

## ❓ FAQ

### Q: Apakah data saya aman?
**A:** Ya! Semua data tersimpan lokal di HP kamu. Tidak ada yang dikirim ke cloud (kecuali kamu backup manual ke GitHub).

### Q: Berapa RAM yang dibutuhkan?
**A:** Minimal 2 GB RAM. Termux + Python + SQLite menggunakan ~100-200 MB.

### Q: Bisa dipakai dengan AI selain Hermes?
**A:** Bisa! System ini universal. Tinggal sesuaikan path folder memory.

### Q: Apakah gratis?
**A:** Ya! 100% gratis. Tidak butuh API key, tidak butuh cloud service.

---

## 🤝 Contributing

Open for contributions! Fork, create branch, PR.

## 📄 License

MIT License - Free to use

## ⭐ Support

If this helps you, give a ⭐ on GitHub!

---

*Created by [krm-z4phkiel](https://github.com/krm-z4phkiel)*
*Made with ❤️ for Termux & AI community*
