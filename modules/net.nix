{config, ...}:
{
#### HostName
  networking.hostName = "fs"; 
#### NetworkManager
  networking.networkmanager.enable = true;
 
#### Avoid school net blocking websites
services.cloudflare-warp.enable = true;

}
