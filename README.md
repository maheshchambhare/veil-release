# Veil macOS Releases 🛡️

Official release distribution repository for **Veil** — the hardware-enforced, 100% offline macOS security fortress that blinds desktop AI agents and background tools from reading your sensitive credentials.

---

## 📥 Direct Downloads (v0.2.0)

| Distribution | Download Link | SHA-256 Checksum |
| :--- | :--- | :--- |
| **Latest Release (Recommended)** | [**Download Veil.dmg**](https://github.com/maheshchambhare/veil-release/raw/main/Veil.dmg) | `49b8f9c2d6a93c005c8a36ee9d46255913006627a95eb6b61eae187053071a8f` |
| **Versioned Release (v0.2.0)** | [**Download Veil-v0.2.0-macOS.dmg**](https://github.com/maheshchambhare/veil-release/raw/main/Veil-v0.2.0-macOS.dmg) | `49b8f9c2d6a93c005c8a36ee9d46255913006627a95eb6b61eae187053071a8f` |

---

## ⚡ 1-Line Terminal Quick Install

Run this command in macOS Terminal to download and install Veil automatically:

```bash
curl -fsSL https://github.com/maheshchambhare/veil-release/raw/main/install.sh | bash
```

---

## 🔒 Verification

Verify the integrity of your download using the macOS built-in SHA-256 utility:

```bash
shasum -a 256 Veil.dmg
```
Expected hash:
```
49b8f9c2d6a93c005c8a36ee9d46255913006627a95eb6b61eae187053071a8f
```

---

## 🚀 What's New in v0.2.0

- **Software License & Hardware Key Display**: Dedicated Settings card displaying hardware-bound license activation keys with one-tap clipboard copy and conceal/reveal privacy controls.
- **Sovereign In-App Update Engine**: Manual zero-telemetry update checks directly against verified public GitHub releases with live SHA-256 verification and atomic DMG installation.
- **Unified Native Authentication**: Full support for Touch ID, Apple Watch, and native Mac login passwords across all Apple Silicon Macs (including Mac mini, Mac Studio, and clamshell setups).
- **Instant Auto-Unlock on Launch**: App automatically prompts for hardware authentication as soon as you open it—zero required button clicks.
- **In-Place File Shielding (VIPSE)**: AES-256-GCM file sealing preserves exact file paths, inodes, and Finder extended attributes.
- **In-Memory CLI Execution (`veil run`)**: Decrypts environment variables straight into child process volatile RAM (`mlock`) with zero disk footprint.
- **Anti-Screen Recording Cloak**: Window sharing is blocked on Zoom, Meet, Loom, and OBS.
- **15-Second Ephemeral Clipboard**: Clipboard automatically purges copied credentials after 15 seconds.

---

## 💻 System Requirements

- **macOS**: Sonoma 14.0 or Sequoia 15.0+
- **Architecture**: Universal (Apple Silicon M1/M2/M3/M4 & Intel 64-bit Core)
- **Offline Guarantee**: Zero network sockets, zero telemetry, zero accounts.
