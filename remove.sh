#!/bin/bash

echo "Cleaning ML4W / Hyprland configs..."

# Remove ML4W + dotfiles
rm -rf ~/.mydotfiles
rm -rf ~/.ml4w-dotfiles
rm -rf ~/.config/ml4w
rm -rf ~/.local/share/ml4w
rm -rf ~/.var/app/com.ml4w.*

# Remove Hyprland broken configs
rm -rf ~/.config/hypr
rm -rf ~/.local/share/hyprland
rm -rf ~/.cache/*

# Reset shell configs
rm -f ~/.bashrc ~/.zshrc
cp /etc/skel/.bashrc ~/
cp /etc/skel/.zshrc ~/

# Reset X/Wayland stuff
rm -f ~/.Xauthority ~/.xinitrc

echo "Done cleaning. Restarting display manager..."

# Restart display manager
sudo systemctl restart display-manager

echo "System should now be clean ✅"
##bash <(curl -s https://ml4w.com/os/stable) # Stable Release
