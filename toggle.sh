#!/usr/bin/env bash
# Toggle Script for Spec-First Architect Skill

SKILL_DIR="$HOME/.hermes/skills/software-development/spec-first-architect"
DISABLED_DIR="$HOME/.hermes/skills/software-development/spec-first-architect.disabled"

ACTION="${1,,}"

case "$ACTION" in
  on|enable|aktif)
    if [ -d "$DISABLED_DIR" ]; then
      mv "$DISABLED_DIR" "$SKILL_DIR"
      echo "[OK] Spec-First Architect Skill BERHASIL DIAKTIFKAN."
    elif [ -d "$SKILL_DIR" ]; then
      echo "[INFO] Skill sudah dalam status AKTIF."
    else
      echo "[ERROR] Direktori skill tidak ditemukan di ~/.hermes/skills/"
    fi
    ;;
  off|disable|nonaktif)
    if [ -d "$SKILL_DIR" ]; then
      mv "$SKILL_DIR" "$DISABLED_DIR"
      echo "[OK] Spec-First Architect Skill BERHASIL DINONAKTIFKAN."
    elif [ -d "$DISABLED_DIR" ]; then
      echo "[INFO] Skill sudah dalam status NONAKTIF."
    else
      echo "[ERROR] Direktori skill tidak ditemukan di ~/.hermes/skills/"
    fi
    ;;
  status)
    if [ -d "$SKILL_DIR" ]; then
      echo "Status: AKTIF"
    elif [ -d "$DISABLED_DIR" ]; then
      echo "Status: NONAKTIF"
    else
      echo "Status: BELUM TERPASANG"
    fi
    ;;
  *)
    echo "Penggunaan: $0 {on|off|status} atau {enable|disable}"
    exit 1
    ;;
esac
