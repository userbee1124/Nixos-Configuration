{config, ...}:
{
#### Bluetooth ####
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
#### Battery
  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;
  services.fwupd.enable = true;
#### Libinput
 services.libinput.enable = true;


}
