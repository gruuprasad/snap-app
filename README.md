# snap-app 📸

A lightweight, zero-overhead agentic screenshot tool designed for AI coding agents (**Antigravity**, **Claude Code**, **Codex**, **Cursor**).

Empowers your terminal and IDE agents to autonomously capture and inspect your application's visual state on demand—without tedious region selections, manual copy-pasting, or heavy MCP server setups.

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

## 🧠 How It Works

Instead of configuring complex MCP daemons or servers:
1. In **any** of your agents (Antigravity, Claude, Codex, Cursor), simply say:  
   **"Look at the app and check the navbar spacing"**
2. The agent executes `snap-app` in the background.
3. The script announces a 3-second countdown on `stderr` (giving you time to focus your app window).
4. It snaps the active window, saves it to a temporary location (`/tmp/agent-snaps/`), and prints the file path on `stdout`.
5. The agent reads the generated image using its native file-viewing tools and immediately analyzes the visual state.

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
