{pkgs, ...}:
{
nixpkgs.config.allowUnfree = true;
services.gvfs.enable = true;
programs.xfconf.enable = true;
programs.dconf.enable = true;
programs.thunar.enable = true;
services.tumbler.enable = true;
environment.systemPackages = with pkgs; [
#### Cli    
    wget
    curl
    git
    unrar
    unzip
    cloudflare-warp
    fastfetch
    btop 
    appimage-run
    p7zip
    dust
    tree 
    rmpc
    mpc
    mpd
#### Gui
    firefox-esr    
    transmission_4-gtk
    nicotine-plus
    telegram-desktop
    anki-bin
#### Mpv
    mpv
    yt-dlp
    ffmpeg
#### Games
    wineWow64Packages.stable
    winetricks
    lutris
    pcsx2

    

   ];
#### Fonts
fonts.packages = with pkgs; [
  nerd-fonts.iosevka
  maple-mono.Normal-Variable
];

}
