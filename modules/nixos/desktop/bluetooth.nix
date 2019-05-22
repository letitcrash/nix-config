{ config, pkgs, lib, ... }:
with lib;
{
options.modules.desktop.bluetooth.enable = mkEnableOption "modules.desktop";
config = mkIf config.modules.desktop.bluetooth.enable {
	   
hardware.bluetooth.enable = true;
hardware.bluetooth.extraConfig = ''
[General]
Enable=Source,Sink,Media,Socket
'';
hardware.pulseaudio.package = pkgs.pulseaudioFull;
hardware.pulseaudio.support32Bit = true;
# hardware.pulseaudio.extraModules = [ pkgs.pulseaudio-modules-bt ];

};
}
