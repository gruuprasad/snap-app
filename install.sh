#!/usr/bin/env bash
set -e

REPO="gruuprasad/snap-app"
BRANCH="main"
RAW_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}"

BIN_DIR="${HOME}/.local/bin"

echo "📸 Installing Snap-App (Zero-Overhead Agentic Screenshot Tool)..."

mkdir -p "${BIN_DIR}"

# Determine if we are in local repo or running from curl
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"
TEMP_SKILL="/tmp/snap-app-skill.md"

if [ -n "${SCRIPT_DIR}" ] && [ -f "${SCRIPT_DIR}/snap-app" ]; then
    echo "📦 Installing from local repository files..."
    cp "${SCRIPT_DIR}/snap-app" "${BIN_DIR}/snap-app"
    cp "${SCRIPT_DIR}/skills/snap-app/SKILL.md" "${TEMP_SKILL}"
else
    echo "🌐 Downloading latest release from GitHub (${REPO})..."
    curl -fsSL "${RAW_URL}/snap-app" -o "${BIN_DIR}/snap-app"
    curl -fsSL "${RAW_URL}/skills/snap-app/SKILL.md" -o "${TEMP_SKILL}"
fi

chmod +x "${BIN_DIR}/snap-app"
echo "✅ Installed snap-app binary to: ${BIN_DIR}/snap-app"

# Helper function to install skill
install_skill() {
    local target_dir="$1"
    local agent_name="$2"
    mkdir -p "$target_dir"
    cp "${TEMP_SKILL}" "${target_dir}/SKILL.md"
    echo "  ✓ Configured skill for ${agent_name}: ${target_dir}/SKILL.md"
}

echo ""
echo "🤖 Auto-configuring coding agents..."

# 1. Antigravity (AGY)
install_skill "${HOME}/.gemini/config/skills/snap-app" "Antigravity (AGY)"

# 2. Claude Code
install_skill "${HOME}/.claude/skills/snap-app" "Claude Code"

# 3. Codex
install_skill "${HOME}/.codex/skills/snap-app" "Codex"

# 4. Cursor
install_skill "${HOME}/.cursor/skills-cursor/snap-app" "Cursor"

# 5. Shared .agents directory
install_skill "${HOME}/.agents/skills/snap-app" "Shared Agents (~/.agents)"

rm -f "${TEMP_SKILL}"

# Check PATH
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo ""
    echo "⚠️  NOTE: ${BIN_DIR} is not in your PATH."
    echo "   Add this to your ~/.bashrc or ~/.zshrc:"
    echo "   export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

echo ""
echo "🎉 Setup complete! All your AI agents can now see your screen on demand."
echo "👉 Simply tell any agent: 'Look at the app' or 'Check my screen'"
