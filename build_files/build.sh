#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs packages from fedora repos
dnf5 install -y \
     emacs \
     emacs-magit \
     entr \
     godot \
     ksshaskpass \
     openssh-askpass \
     python3 \
     python3-libs \
     python3-pytest \
     ruff \
     tmux \
     toolbox \
     uv \
     virt-manager \
     \
     adobe-source-code-pro-fonts \
     adobe-source-sans-pro-fonts \
     atkinson-hyperlegible-mono-fonts \
     cascadia-code-fonts \
     cascadia-code-nf-fonts \
     comic-neue-fonts-common \
     google-cousine-fonts \
     google-droid-fonts-all \
     google-go-mono-fonts \
     google-roboto-condensed-fonts \
     google-roboto-fonts \
     google-roboto-mono-fonts \
     google-roboto-slab-fonts \
     ibm-plex-fonts-all \
     intel-one-mono-fonts \
     jetbrains-mono-fonts \
     jetbrains-mono-nl-fonts \
     lato-fonts \
     liberation-fonts-all \
     linux-libertine-fonts-all \


# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

dnf5 copr -y enable aldantanneo/jj-vcs
dnf5 install -y jj-cli
dnf5 copr -y disable aldantanneo/jj-vcs

#### Example for enabling a System Unit File

systemctl enable podman.socket
