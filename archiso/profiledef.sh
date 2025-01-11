#!/usr/bin/env bash
# shellcheck disable=SC2034

# ISO Information
iso_name="snigdhaos"
iso_publisher="Snigdha OS <https://snigdhaos.org>"
iso_application="Snigdha OS Live/Rescue DVD"

# Date Formatting for ISO Version and Label
iso_version=$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)
iso_label="SNIGDHA_OS_${iso_version//./}"  # Removing dots from version to create label

# Install Directory and Boot Modes
install_dir="snigdhaos"
arch="x86_64"

# Boot Modes Supported (BIOS & UEFI)
bootmodes=(
  'bios.syslinux.mbr' 
  'bios.syslinux.eltorito'
  'uefi-ia32.systemd-boot.esp' 
  'uefi-x64.systemd-boot.esp'
  'uefi-ia32.systemd-boot.eltorito' 
  'uefi-x64.systemd-boot.eltorito'
)

# Build Modes
buildmodes=('iso')

# Configuration Files
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"

# Options for Compression and Image Creation
airootfs_image_tool_options=(
  '-comp' 'xz' 
  '-Xbcj' 'x86' 
  '-b' '1M' 
  '-Xdict-size' '1M'
)

bootstrap_tarball_compression=(
  'zstd' 
  '-c' 
  '-T0' 
  '--auto-threads=logical' 
  '--long' 
  '-19'
)

# File Permissions Configuration
# Define secure permissions for system files and directories
file_permissions=(
  # System files (shadow, gshadow, etc.) - Sensitive data
  ["/etc/gshadow"]="0:0:600"     # Root-only readable, no writing allowed
  ["/etc/shadow"]="0:0:400"       # Root-only readable, no writing allowed
  
  # Root's home directory (should be private)
  ["/root"]="0:0:700"             # Full access for root only

  # Automated script (ensure it is executable by root)
  ["/root/.automated_script.sh"]="0:0:755"  # Readable and executable by root
  
  # Polkit rules and sudoers.d (restrict access to administrators)
  ["/etc/polkit-1/rules.d"]="0:0:750"        # Admin access only
  ["/etc/sudoers.d"]="0:0:750"               # Admin access only

  # Grub and snapper tools (ensuring appropriate user access)
  ["/etc/grub.d/40_custom"]="0:0:755"        # Executable for all users
  ["/usr/local/bin/snigdhaos-snapper"]="0:0:755" # Executable for all users

  # NetworkManager dispatcher script (ensure root access)
  ["/etc/NetworkManager/dispatcher.d/09-timezone"]="0:0:755" # Executable by root
)

# Ensure proper configurations for system security and compression
