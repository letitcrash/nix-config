{ config, pkgs, ... }:
{

i18n = {
consoleUseXkbConfig = true;
consoleFont = "Lat2-Terminus18";
defaultLocale = "en_US.UTF-8";
};

time.timeZone = "UTC";

}
