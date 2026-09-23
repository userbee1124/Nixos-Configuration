{config, pkgs, ...}:
{
#### I
     users.users.dv = {
     isNormalUser = true;
     shell = pkgs.fish;
     extraGroups = [ "wheel" "networkmanager" "libvirtd" ]; 
   };
#### Shell 
programs.fish.enable = true;

#### Locales
i18n.supportedLocales = [
  "en_US.UTF-8/UTF-8"
  "ru_RU.UTF-8/UTF-8"
  ];

#### Timezone
time.timeZone = "Europe/Amsterdam";


}
