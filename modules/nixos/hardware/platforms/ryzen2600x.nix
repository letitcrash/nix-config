{ config, pkgs, lib, ... }:
# generic HP Z620 configuration
with lib;
with import ../../../../util;
{
options.modules.hardware.platform.ryzen2600x.enable = mkEnableOption "hardware.platform.ryzen2600x";
config = mkIf config.modules.hardware.platform.ryzen2600x.enable {

modules.hardware = enableMultiple [
"metal"
"power"
"amd-microcode"
];

};
}
