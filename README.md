# snap-app 📸

A lightweight, zero-overhead targeted screenshot tool for AI coding agents (**Antigravity**, **Claude Code**, **Codex**, **Cursor**).

Designed specifically for **non-web desktop applications, emulators, and native GUI windows** without stealing window focus, disrupting your work, or requiring MCP servers.

> 💡 **For Web Applications:** AI agents should always prioritize **Playwright / browser automation** for deterministic URL/port-level verification. Use `snap-app` for desktop apps, mobile emulators, or specific window targets.

---

## ⚡ 1-Line Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/gruuprasad/snap-app/main/install.sh | bash
```

### 📦 Auto-configured across:
- **Google Antigravity (AGY)**: `~/.gemini/config/skills/snap-app/SKILL.md`
- **Claude Code**: `~/.claude/skills/snap-app/SKILL.md`
- **Codex**: `~/.codex/skills/snap-app/SKILL.md`
- **Cursor**: `~/.cursor/skills-cursor/snap-app/SKILL.md`
- **Shared Agents**: `~/.agents/skills/snap-app/SKILL.md`

---

## 🎯 Targeted Usage with Window Hints

Agents or users can provide a window hint to guarantee the correct application is captured:

```bash
# Snap by app keyword or title
snap-app "Android Emulator"
snap-app "Figma"
snap-app "Calculator"

# List available windows
snap-app --list
```

### Key Features:
- **Silent Background Capture**: Reads directly from compositor memory without raising or focusing windows.
- **Zero Disruptions**: You can continue typing in your terminal while the agent snaps the window.
- **Safe Fallback**: If a hint doesn't match, it lists available windows rather than blindly hallucinating.

---

## 📄 License
[MIT](LICENSE) © 2026 gruuprasad
