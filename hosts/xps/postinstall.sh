# setup dotfiles
cat << EOF | nixos-enter
sudo -u paul bash /nix-config/dotfiles/bin/dotfiles-install.sh
EOF
