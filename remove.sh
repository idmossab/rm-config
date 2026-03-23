#!/bin/bash

echo "⚠️  This will delete ML4W and related configs..."
read -p "Are you sure? (y/n): " confirm

if [[ $confirm != "y" ]]; then
  echo "❌ Cancelled."
  exit 1
fi

echo "🧹 Cleaning files..."

rm -rf ~/.mydotfiles
rm -rf ~/.ml4w-dotfiles
rm -rf ~/.config/ml4w
rm -rf ~/.local/share/ml4w
rm -rf ~/.var/app/com.ml4w.*
rm -rf ~/.cache/*
rm -rf ~/.local/share/wayland
rm -rf ~/.local/share/hyprland
rm -rf ~/.Xauthority
rm -rf ~/.xinitrc

echo "✅ Done!"
