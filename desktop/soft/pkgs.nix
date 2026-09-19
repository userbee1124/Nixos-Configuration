{pkgs, ...}:
{
nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [
#### Cli    
    wget
    curl
    git
    unrar-free
    unzip
    cloudflare-warp
    fastfetch
    btop 
    appimage-run
    p7zip
    dust
    tree
    yazi
    rmpc
    mpc
    mpd
#### Gui
    firefox-esr    
    transmission_4-gtk
    nicotine-plus
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
