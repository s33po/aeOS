#!/bin/bash

set -ouex pipefail

### Install packages

dnf5 install -y \
   steam \
   steam-devices \
   fastfetch \
   btop \
   neovim \
   zsh \
   python3-ramalama \
   jetbrains-mono-fonts-all \
   google-noto-sans-fonts \
   powerline-fonts \

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
