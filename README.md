# snap-app 📸

A lightweight, zero-overhead agentic screenshot tool designed for AI coding agents (**Antigravity**, **Claude Code**, **Codex**, **Cursor**).

Empowers your terminal agents to autonomously capture and inspect your application's visual state on demand—without tedious region selections, manual copy-pasting, or heavy MCP server setups.

---

## ⚡ 1-Line Quick Install

Run this command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/gruuprasad/snap-app/main/install.sh | bash
```

This single step:
1. Installs the `snap-app` executable into `~/.local/bin/`
2. Automatically registers the global skill for **Google Antigravity (AGY)** at `~/.gemini/config/skills/snap-app/SKILL.md`

*(Make sure `~/.local/bin` is in your `$PATH`)*

---

## 🧠 How It Works

Instead of configuring complex MCP daemons or servers:
1. You say to the agent: **"Look at the app and check the navbar spacing"**
2. The agent executes `snap-app` in the background.
3. The script announces a 3-second countdown on `stderr` (giving you time to focus your app window).
4. It snaps the active window, saves it to a temporary location (`/tmp/agent-snaps/`), and prints the file path on `stdout`.
5. The agent reads the generated image using its native file-viewing tools and immediately analyzes the visual state.

---

## 🤖 Setup for Other AI Agents

### Antigravity (AGY)
> **Zero configuration needed!** The install script automatically installs the global skill. Just ask: `"Look at the app"`

### Claude Code
Add this snippet to your project's `CLAUDE.md` or `.claudecode`:

```markdown
### Visual Inspection / Screenshots
When you need to visually check the application UI:
1. Run the terminal command `snap-app`
2. The script gives the user a 3-second countdown to switch to the app window.
3. Read the PNG image path returned on stdout to inspect the visual state.
```

### Cursor / Windsurf
Add this snippet to `.cursorrules`:

```markdown
If you need to verify UI visually, run `snap-app` in the terminal. Read the output PNG file path to inspect the screenshot.
```

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
