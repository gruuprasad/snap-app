---
name: snap-app
description: >-
  Use this skill to visually inspect non-web desktop apps, emulators, or specific native windows.
  For web development, ALWAYS prefer the Playwright skill instead.
---

# Snap-App (Targeted Desktop & Window Capture)

## When to use this skill:
- **Non-web applications**: Native GUI apps (Electron, Flutter, Tauri, Qt, GTK), Mobile Simulators (Android Emulator, iOS Simulator), Terminal TUIs, or native desktop tools.
- **Specific window inspections**: When instructed by the user to look at a desktop window.

> ⚠️ **FOR WEB APPS:** If the app is running on a local dev server (localhost), **USE PLAYWRIGHT** instead.

## How it works (Set-Once & Passive Memory):
1. **Targeting**: When you first run `snap-app`, provide the user's app window title or keyword:
   ```bash
   snap-app "Android Emulator"
   # or
   snap-app "Figma"
   ```
2. **Subsequent captures**: `snap-app` automatically remembers the designated target window for the rest of the session. Subsequent calls can simply be:
   ```bash
   snap-app
   ```
3. The tool captures silently in the background from the compositor buffer with zero window switching or disruption.
4. Read the output `.png` filepath to inspect the visual state.
