{ config, pkgs, ... }:
# Dell Latitude E6430 - Top Level Nixfile
{
imports = [ ../../modules ];

system.stateVersion = "19.03";

# Computer name
networking.hostName = "xps";

# use a generic xps profile
modules.hardware.platform.xps9570.enable = true;

# Enable the modular desktop profile
modules.desktop.enable = true;

# Services
modules.services.libvirtd.enable = true;

# Experimental
system.autoUpgrade.enable = true;
boot.zfs.enableUnstable = true;
boot.zfs.requestEncryptionCredentials = true;
}
