#!/bin/bash
# ============================================================
#  Startup in — One-command GitHub push script
#  Run this ONCE from the folder containing index.html
# ============================================================

set -e

REPO_NAME="startupin-landing"
REPO_DESC="Dark glassmorphic landing page with Web3Forms integration — Startup in storytelling platform"

echo ""
echo "🚀  Startup in — GitHub Publisher"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ── 1. Check git ──────────────────────────────────────────
if ! command -v git &> /dev/null; then
  echo "❌  git not found. Install from https://git-scm.com"
  exit 1
fi

# ── 2. Check gh CLI ───────────────────────────────────────
if ! command -v gh &> /dev/null; then
  echo "❌  GitHub CLI (gh) not found."
  echo "    Install: https://cli.github.com"
  exit 1
fi

# ── 3. Auth check ─────────────────────────────────────────
if ! gh auth status &> /dev/null; then
  echo "📋  Not logged into GitHub. Opening login..."
  gh auth login --git-protocol https
fi

USERNAME=$(gh api user --jq .login)
echo "✅  Logged in as: @$USERNAME"
echo ""

# ── 4. Init git repo ──────────────────────────────────────
echo "📁  Initializing git..."
git init -b main
git add index.html README.md

git commit -m "feat: Startup in landing page with Web3Forms

- Glassmorphic dark-theme UI (Tailwind CSS v3)
- Web3Forms contact modal with async/await submission
- CTA source tracking via openBookingModal(source)
- Honeypot anti-spam, inline error handling
- Zero dependencies — single file, no build step"

echo ""

# ── 5. Create GitHub repo ─────────────────────────────────
echo "🔧  Creating GitHub repo: $REPO_NAME..."
gh repo create "$REPO_NAME" \
  --public \
  --description "$REPO_DESC" \
  --source=. \
  --remote=origin \
  --push

echo ""

# ── 6. Enable GitHub Pages ────────────────────────────────
echo "🌐  Enabling GitHub Pages..."
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  /repos/$USERNAME/$REPO_NAME/pages \
  -f source[branch]=main \
  -f source[path]=/ \
  2>/dev/null && echo "✅  GitHub Pages enabled!" || echo "ℹ️   Enable Pages manually: Settings → Pages → main / root"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉  Done! Your project is live."
echo ""
echo "   📦  Repo:  https://github.com/$USERNAME/$REPO_NAME"
echo "   🌐  Page:  https://$USERNAME.github.io/$REPO_NAME"
echo "             (GitHub Pages takes ~60 seconds to go live)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
