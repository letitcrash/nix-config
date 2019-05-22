{ config, pkgs, ... }:
# HP Z620 - Top Level Nixfile
{
imports = [
../../modules
./quirks.nix
];

system.stateVersion = "19.03";

# Computer name
networking.hostName = "ryzen";

# Use a generic ryzen profile
modules.hardware.platform.ryzen2600x.enable = true;

# Use a generic amdgpu profile
modules.hardware.amdgpu.enable = true;

# Enable the modular desktop profile
modules.desktop.enable = true;

# Services
modules.services.libvirtd.enable = true;

# Experimental
system.autoUpgrade.enable = true;
boot.zfs.enableUnstable = true;
boot.zfs.requestEncryptionCredentials = true;
}
