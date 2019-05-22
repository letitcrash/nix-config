{ config, pkgs, lib, ... }:
with lib;
{
options.modules.desktop.opengl.enable = mkEnableOption "modules.desktop";
config = mkIf config.modules.desktop.opengl.enable {

hardware.opengl = {
driSupport = true;
driSupport32Bit = true;
};


# # opengl support
# hardware.opengl.enable = true;
# hardware.opengl.driSupport32Bit = true;
# hardware.opengl.extraPackages = with pkgs; [
#   (vaapiIntel.override {
#     enableHybridCodec = true; })
#   vaapiVdpau
#   libvdpau-va-gl
#   intel-media-driver # only available starting nixos-19.03 or the current nixos-unstable
# ];


};
}
