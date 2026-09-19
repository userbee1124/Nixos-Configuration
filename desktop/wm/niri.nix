{ config, pkgs, inputs, ... }:
{

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  programs.niri.enable = true;

  programs.noctalia = {
    enable = true;

    recommendedServices.enable = true;

    systemd.enable = true;
  };
    
  environment.systemPackages = with pkgs; [
   grim
   slurp
   foot
   wl-clipboard
   nwg-look
   pywalfox-native
   brightnessctl
   imv
  ];


} 
