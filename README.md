# snap-app 📸

A lightweight, zero-overhead targeted screenshot tool for AI coding agents (**Antigravity**, **Claude Code**, **Codex**, **Cursor**).

Designed specifically for **non-web desktop applications, emulators, and native GUI windows** without stealing window focus, disrupting your work, or requiring MCP servers.

> 💡 **For Web Applications:** AI agents should always prioritize **Playwright / browser automation** for deterministic URL/port-level verification. Use `snap-app` for desktop apps, mobile emulators, or specific window targets.

---

## ⚡ 1-Line Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/gruuprasad/snap-app/main/install.sh | bash
```

---

## 🧠 "Set Once & Passive Memory" Workflow

`snap-app` is completely passive and avoids guessing:

1. **Set target window once:**
   ```bash
   snap-app "Android Emulator"
   # or
   snap-app "Figma"
   ```
2. **Subsequent captures are passive:**
   ```bash
   snap-app
   ```
   `snap-app` automatically remembers the designated target window for the session and captures it silently in the background from the compositor buffer without stealing focus.

3. **Clear target:**
   ```bash
   snap-app --clear
   ```

---

## 📄 License
[MIT](LICENSE) © 2026 gruuprasad
