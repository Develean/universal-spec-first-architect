---
name: spec-first-architect
description: "Adaptive spec & architecture lock based on task complexity."
version: 2.0.0
author: YAze lanze, Hermes Agent
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [architecture, pre-coding, triage, visual-flow, spec-lock]
    related_skills: [grill-me, one-three-one-rule]
---

# Spec-First Architect Skill (v2.0.0)

Universal adaptive engineering protocol that balances rapid execution for small fixes with structured visual locking for complex architectures.

## When to Use

- Activated on any coding task, feature request, refactor, or architectural design.
- First step is ALWAYS **Task Complexity Triage**.

---

## 3-Tier Complexity Triage

Before executing or locking, categorize the incoming task into one of three tiers:

### Tier 1: Trivial / Direct Fix (Zero Lock)
- **Criteria:** Single-file change, simple bug fix, typo, style tweak, adding a test, or explicit instructions with no architectural ambiguity.
- **Action:** Execute immediately. No execution lock, no Mermaid diagram, no interview needed.

### Tier 2: Medium Feature / Refactor (Lightweight Checklist)
- **Criteria:** Multi-file changes with clear requirements, standard CRUD extension, or well-bounded component refactoring.
- **Action:** Provide a concise 3-4 step implementation checklist before executing. Mermaid is optional/not required. Proceed directly after stating the plan.

### Tier 3: Major Architecture / New System / Ambiguous Request (Full Lock)
- **Criteria:** Brand new projects, database schema overhauls, authentication flows, payment systems, integration of multiple external services, or vague requests.
- **Action:** **HARD LOCK ACTIVATED**. Follow the 5-Phase Protocol below.

---

## Full Lock Protocol (Tier 3 Only)

### Phase 0: Grounding & Context Discovery (Read-Only Permitted)
- **Permitted Tools:** Read-only exploration is encouraged before proposing designs (`read_file`, `search_files`, `git status`, `git diff`, directory listing).
- **Prohibited:** Do NOT run write or mutation commands (no file edits, no package installations, no destructive commands) before design approval.
- Inspect project conventions, dependencies, and existing patterns first.

### Phase 1: Problem Decomposition & Scope Framing
- Identify the core user intent and formulate a single-sentence problem statement.
- Distinguish between explicit requirements and open assumptions.

### Phase 2: Visual Logic Rendering (Mermaid.js)
- Render an architectural flow or sequence diagram in Mermaid format illustrating data flow, decision branches, and service boundaries.

### Phase 3: Proactive Architectural Advisory (1-3-1 Rule)
- Present 2 to 3 distinct implementation strategies:
  - **Option A (Recommended):** Industry-standard, secure, and robust approach with explicit justification.
  - **Option B (Fast MVP):** Minimal complexity, fewer dependencies, highlighting technical debt.
  - **Option C (Alternative):** Alternative trade-off (e.g., event-driven vs synchronous).
- Detail trade-offs, dependencies, and pros/cons for each option.

### Phase 4: Tone Adaptation & Alignment
- **Adaptive Tone:** Match the user's language, dialect, and communication style naturally (mirror formality, slang, or technical depth; do not force fixed pronouns like "lu/gua" if the user speaks differently).
- Ask the user which approach they prefer or if any adjustments are needed in the visual flow.

### Phase 5: Contract Specification (SPEC.md) & Execution
- Upon user approval, generate `SPEC.md` using the standardized contract template.
- Release the execution lock and begin modular implementation according to the checklist.
