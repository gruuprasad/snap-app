# snap-app 📸

A lightweight, zero-overhead agentic screenshot tool designed for AI coding agents (**Antigravity**, **Claude Code**, **Codex**, **Cursor**).

Empowers your terminal and IDE agents to autonomously capture and inspect your application's visual state on demand—**without countdowns, manual window switching, or user intervention**.

---

## ⚡ 1-Line Quick Install

Run this command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/gruuprasad/snap-app/main/install.sh | bash
```

### 📦 What this single step does automatically:
1. Installs the `snap-app` executable into `~/.local/bin/`
2. Configures the global skill for **Google Antigravity (AGY)** (`~/.gemini/config/skills/snap-app/SKILL.md`)
3. Configures the global skill for **Claude Code** (`~/.claude/skills/snap-app/SKILL.md`)
4. Configures the global skill for **Codex** (`~/.codex/skills/snap-app/SKILL.md`)
5. Configures the global skill for **Cursor** (`~/.cursor/skills-cursor/snap-app/SKILL.md`)
6. Configures the shared agents directory (`~/.agents/skills/snap-app/SKILL.md`)

*(Make sure `~/.local/bin` is in your `$PATH`)*

---

## 🧠 Truly Autonomous (Zero User Interaction Required)

Unlike traditional screenshot tools that require you to watch a countdown and manually Alt-Tab:
1. You say to the agent: **"Look at the app and check the navbar spacing"**
2. The agent executes `snap-app`.
3. `snap-app` **auto-detects the app/browser window**, focuses it, captures the screenshot, and **instantly restores focus back to your terminal/IDE in ~0.2s**.
4. The agent reads the generated image path and analyzes the visual state immediately.

You don't need to be alert or switch windows.

---

## 🛠️ System Prerequisites

`snap-app` automatically detects your platform:
- **Linux (X11)**: Uses `xdotool` + `import` (ImageMagick) or `maim` / `scrot`.
- **Linux (Wayland)**: Uses `grim`.
- **macOS**: Uses native `screencapture`.

### Linux Dependencies
```bash
# Ubuntu / Debian
sudo apt install imagemagick xdotool xclip

# Arch Linux
sudo pacman -S imagemagick xdotool xclip

# Fedora
sudo dnf install ImageMagick xdotool xclip
```

---

## 📄 License
[MIT](LICENSE) © 2026 gruuprasad
