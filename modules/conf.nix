{config, ...}:
{
#### Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];


#### Auto delete version
 nix.gc = {
  automatic = true;
  dates = "weekly";
  options = "--delete-older-than 14d";
  };
  

}
