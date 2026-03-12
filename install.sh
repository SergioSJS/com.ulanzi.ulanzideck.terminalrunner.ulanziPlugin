#!/bin/bash

# Terminal Runner Plugin - Installation Script
# Installs this plugin folder into the Ulanzi Deck plugins directory.

set -e

PLUGIN_DIR_NAME="com.ulanzi.ulanzideck.terminalrunner.ulanziPlugin"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_BASE="$HOME/Library/Application Support/Ulanzi/UlanziDeck/Plugins"
TARGET_DIR="$TARGET_BASE/$PLUGIN_DIR_NAME"

if [ "$(basename "$SOURCE_DIR")" != "$PLUGIN_DIR_NAME" ]; then
  echo "Error: run this script from the plugin folder '$PLUGIN_DIR_NAME'."
  exit 1
fi

mkdir -p "$TARGET_BASE"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

echo "Installed plugin to: $TARGET_DIR"
echo "Reload plugins or restart Ulanzi Deck."
