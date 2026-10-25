# Universal Spec-First Architect Skill (v2.0.0)

Protokol adaptif lintas agent untuk menjembatani komunikasi ide dan mencegah AI langsung menulis kode secara membabi buta.

## Fitur Utama

1. **3-Tier Complexity Triage:**
   - **Tier 1 (Trivial / Bug Fix / Single File):** Langsung eksekusi tanpa lock & tanpa diagram.
   - **Tier 2 (Medium Feature / Refactor):** Rencana ringkas (checklist 3-4 langkah), eksekusi tanpa Mermaid.
   - **Tier 3 (New System / Major Architecture / Vague Request):** Full Spec-Lock aktif (Lock → Mermaid → Opsi 1-3-1 → Approval).
2. **Phase 0: Grounding & Context Discovery:**
   - Read-only tools (`read_file`, `grep`, `find`, `git status`) diperbolehkan dan dianjurkan untuk memeriksa kodebase sebelum merancang arsitektur.
   - Larangan mutlak hanya berlaku untuk perintah penulisan/mutasi kode (`write`, `edit`, `build`, destructive commands).
3. **Standarisasi Kontrak SPEC.md:**
   - Template kontrak ringkas mencakup Scope, Non-Scope, Checklist Task, dan Definition of Done.
4. **Tone Komunikasi Adaptif:**
   - Agent menyesuaikan gaya bahasa user secara dinamis tanpa memaksakan sapaan/slang kaku.

---

## File dalam Paket

- `SKILL.md`: Format native untuk Hermes Agent & OpenHands.
- `.cursorrules`: Siap pasang untuk Cursor IDE & Windsurf.
- `CLAUDE.md`: Format untuk Claude Code CLI.
- `SPEC_TEMPLATE.md`: Template standar kontrak pengerjaan task.
- `toggle.sh`: Script praktis untuk mengaktifkan / menonaktifkan skill via terminal.
- `README.md`: Panduan implementasi ini.

---

## Cara Pasang di Berbagai Platform

### 1. Hermes Agent
Sudah terpasang dan aktif di:
`~/.hermes/skills/software-development/spec-first-architect/`

### 2. Cursor IDE / Windsurf
Copy file `.cursorrules` ke root direktori repository project:
```bash
cp .cursorrules /path/ke/repo/
```

### 3. Claude Code CLI / OpenHands
Copy file `CLAUDE.md` ke root direktori project:
```bash
cp CLAUDE.md /path/ke/repo/
```

### 4. Cline, Roo Code, & GitHub Copilot
Untuk agen lain yang membaca file konfigurasi khusus, cukup salin `.cursorrules`:
```bash
# Untuk Cline & Roo Code
cp .cursorrules /path/ke/repo/.clinerules

# Untuk GitHub Copilot Workspace
mkdir -p /path/ke/repo/.github && cp .cursorrules /path/ke/repo/.github/copilot-instructions.md
```

### 5. Web UI (ChatGPT / Claude.ai) Tanpa Cursor/CLI
Bagi pengguna yang tidak memakai CLI/IDE dan langsung berinteraksi di browser:

- **ChatGPT (Web / App):**
  1. Buka **Settings** -> **Personalization** -> **Custom Instructions**.
  2. Pada kolom *"How would you like ChatGPT to respond?"*, salin dan tempel seluruh isi file `.cursorrules`.
  3. Atau jika menggunakan **Custom GPTs**, tempel isi file `.cursorrules` ke kolom **Instructions** di GPT Builder.

- **Claude.ai (Web / Desktop App):**
  1. Buat **Project** baru di Claude.ai.
  2. Buka menu **Set Project Instructions** di panel kanan.
  3. Salin dan tempel seluruh isi file `.cursorrules` ke dalamnya.
  4. (Alternatif cepat): Tempel isi file `.cursorrules` sebagai prompt awal di awal chat baru.

---

## Cara Aktif & Non-Aktifkan Skill Lewat Terminal

### Opsi A: Menggunakan Script `toggle.sh` (Praktis)
Beri hak eksekusi sekali, lalu gunakan perintah berikut:
```bash
# Beri izin eksekusi script
chmod +x toggle.sh

# Cek status saat ini
./toggle.sh status

# Nonaktifkan skill
./toggle.sh off

# Aktifkan kembali skill
./toggle.sh on
```

### Opsi B: Perintah Manual Terminal (Satu Baris)
- **Menonaktifkan:**
  ```bash
  mv ~/.hermes/skills/software-development/spec-first-architect ~/.hermes/skills/software-development/spec-first-architect.disabled
  ```
- **Mengaktifkan kembali:**
  ```bash
  mv ~/.hermes/skills/software-development/spec-first-architect.disabled ~/.hermes/skills/software-development/spec-first-architect
  ```
