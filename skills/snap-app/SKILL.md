---
name: snap-app
description: >-
  Use this skill to visually inspect non-web desktop apps, emulators, or specific native windows.
  For web development, ALWAYS prefer the Playwright skill instead.
---

# Snap-App (Targeted Desktop & Window Capture)

## When to use this skill:
- **Non-web applications**: Native GUI apps (Electron, Flutter, Tauri, Qt, GTK), Mobile Simulators (Android Emulator, iOS Simulator), Terminal TUIs, or native desktop tools.
- **Specific window inspections**: When explicitly instructed by the user to look at a specific desktop window.

> ⚠️ **CRITICAL RULE FOR WEB APPS:**  
> If the task is for a web application running on a local dev server (localhost), **DO NOT USE THIS SKILL**. Use the **Playwright skill** instead, which connects directly and deterministically to the target URL.

## How to use:
1. Always pass a target window hint or app name to avoid capturing the wrong window:
   ```bash
   snap-app --app "<app_name_or_keyword>"
   ```
   Examples:
   - `snap-app --app "Android Emulator"`
   - `snap-app --app "Figma"`
   - `snap-app --app "Calculator"`

2. The tool captures the specified window directly from the compositor buffer in the background without stealing focus or disrupting the user.
3. Read the output `.png` filepath to inspect the visual state.
