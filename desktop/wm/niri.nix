{ config, pkgs,  ... }:
{

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  programs.niri.enable = true;
    
  environment.systemPackages = with pkgs; [
   grim
   slurp
   foot
   wl-clipboard
   nwg-look
   waybar
   rofi
   awww
   brightnessctl
   imv
  ];


} 
