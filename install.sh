#!/usr/bin/env bash
set -e

REPO="gruuprasad/snap-app"
BRANCH="main"
RAW_URL="https://raw.githubusercontent.com/${REPO}/${BRANCH}"

BIN_DIR="${HOME}/.local/bin"
SKILL_DIR="${HOME}/.gemini/config/skills/snap-app"

echo "📸 Installing Snap-App (Zero-Overhead Agentic Screenshot Tool)..."

mkdir -p "${BIN_DIR}"
mkdir -p "${SKILL_DIR}"

# Determine if we are in local repo or running from curl
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" 2>/dev/null && pwd || echo "")"

if [ -n "${SCRIPT_DIR}" ] && [ -f "${SCRIPT_DIR}/snap-app" ]; then
    echo "📦 Installing from local repository files..."
    cp "${SCRIPT_DIR}/snap-app" "${BIN_DIR}/snap-app"
    cp "${SCRIPT_DIR}/skills/snap-app/SKILL.md" "${SKILL_DIR}/SKILL.md"
else
    echo "🌐 Downloading latest release from GitHub (${REPO})..."
    curl -fsSL "${RAW_URL}/snap-app" -o "${BIN_DIR}/snap-app"
    curl -fsSL "${RAW_URL}/skills/snap-app/SKILL.md" -o "${SKILL_DIR}/SKILL.md"
fi

chmod +x "${BIN_DIR}/snap-app"

echo ""
echo "✅ Installed snap-app binary to: ${BIN_DIR}/snap-app"
echo "✅ Installed Antigravity skill to: ${SKILL_DIR}/SKILL.md"

# Check PATH
if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
    echo ""
    echo "⚠️  NOTE: ${BIN_DIR} is not in your PATH."
    echo "   Add this to your ~/.bashrc or ~/.zshrc:"
    echo "   export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

echo ""
echo "🎉 Setup complete! Your AI agents can now see your screen on demand."
echo ""
echo "• Antigravity (AGY): Automatically configured! Just ask: 'Look at the app'"
echo "• Claude Code / Cursor / Codex: See https://github.com/${REPO} for quick prompt setup."
