#!/bin/bash
set -e

echo "🛡️  Installing Veil for macOS..."
TMP_DMG="$(mktemp -d)/Veil.dmg"
DMG_URL="https://github.com/maheshchambhare/veil-release/raw/main/Veil.dmg"

echo "==> Downloading latest Veil DMG from GitHub..."
curl -fsSL "$DMG_URL" -o "$TMP_DMG"

echo "==> Mounting DMG..."
MOUNT_DIR=$(hdiutil attach "$TMP_DMG" -nobrowse | grep "/Volumes/" | awk '{print $NF}')

echo "==> Installing Veil.app to /Applications..."
rm -rf "/Applications/Veil.app"
cp -R "$MOUNT_DIR/Veil.app" "/Applications/"

echo "==> Installing veil CLI symlink..."
if [ -d "/usr/local/bin" ] && [ -w "/usr/local/bin" ]; then
    ln -sf "/Applications/Veil.app/Contents/MacOS/veil-cli" "/usr/local/bin/veil"
    echo "    ✓ Linked to /usr/local/bin/veil"
else
    mkdir -p "$HOME/.local/bin"
    ln -sf "/Applications/Veil.app/Contents/MacOS/veil-cli" "$HOME/.local/bin/veil"
    echo "    ✓ Linked to $HOME/.local/bin/veil"
fi

echo "==> Detaching DMG..."
hdiutil detach "$MOUNT_DIR" -quiet || true
rm -f "$TMP_DMG"

echo "🎉 Veil installed successfully! Launch it from /Applications/Veil.app or run 'veil --help'."
