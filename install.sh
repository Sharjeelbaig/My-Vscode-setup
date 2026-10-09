#!/usr/bin/env bash
# Flat Fizz installer: copies bubbles.css into ~/.vscode/custom and prints
# the exact settings line to paste. Does NOT touch your settings.json.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)/custom/bubbles.css"
DEST_DIR="$HOME/.vscode/custom"

mkdir -p "$DEST_DIR"
cp "$SRC" "$DEST_DIR/bubbles.css"

echo "Copied bubbles.css to $DEST_DIR/bubbles.css"
echo
echo "Add this to \"vscode_custom_css.imports\" in your settings.json:"
echo
echo "    \"file://$DEST_DIR/bubbles.css\""
echo
echo "Then run 'Enable Custom CSS and JS' from the Command Palette and restart VS Code."
echo "(Re-run that command after every VS Code update, it gets wiped.)"
