{ config, lib, pkgs, ... }:
{
environment.systemPackages = with pkgs; [
    xfce.xfce4-whiskermenu-plugin
    elementary-xfce-icon-theme
    gnome-themes-extra

];

 services.xserver = {
       enable = true;
       desktopManager = {
           xterm.enable = false;
           xfce.enable = true;
	};

   };
  services.displayManager.sddm.enable = true;

}
