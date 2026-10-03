#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RUNTIME_ROOT="$REPO_ROOT/.runtime"
GHOST_DIR="$RUNTIME_ROOT/ghost"
THEME_SOURCE="$REPO_ROOT/theme"
THEME_LINK="$GHOST_DIR/content/themes/journal-editorial-theme"

mkdir -p "$RUNTIME_ROOT"

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js is required. Ghost 6 officially supports Node 22 for production."
  exit 1
fi

if ! command -v ghost >/dev/null 2>&1; then
  echo "Ghost CLI is not installed."
  echo "Install it once with: npm install -g ghost-cli@latest"
  exit 1
fi

if [ ! -f "$GHOST_DIR/config.development.json" ]; then
  mkdir -p "$GHOST_DIR"
  cd "$GHOST_DIR"
  ghost install local
fi

mkdir -p "$GHOST_DIR/content/themes"
rm -rf "$THEME_LINK"
ln -s "$THEME_SOURCE" "$THEME_LINK"

cd "$GHOST_DIR"
ghost restart

echo
echo "Ghost is running at http://localhost:2368"
echo "Admin: http://localhost:2368/ghost"
echo "Theme linked from: $THEME_SOURCE"
echo
echo "In Ghost Admin: Settings -> Site -> Theme -> activate 'journal-editorial-theme'."
