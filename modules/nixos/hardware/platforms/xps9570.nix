{ config, pkgs, lib, ... }:
# generic dell latitude E6430 configuration
with lib;
with import ../../../../util;
{
options.modules.hardware.platform.xps9570.enable = mkEnableOption "hardware.platform.xps9570";
config = mkIf config.modules.hardware.platform.xps9570.enable {

modules.hardware = enableMultiple [
"metal"
"powerSave"
"intelgfx"
"touchpad"
"intel-microcode"
];

services.xserver.libinput.accelSpeed = "0.75";
};
}
