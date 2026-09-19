{config, pkgs, ...}:
{
#### Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

#### Systemd boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

}
