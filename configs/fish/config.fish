if status is-interactive
# Commands to run in interactive sessions can go here
end

alias yt-mp3='yt-dlp -x --audio-format mp3'
alias yt-mp4='yt-dlp -f "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" --merge-output-format mp4 -o "%(title)s.%(ext)s"'
alias os-age='/home/dv/Src/Os-age/./os-age.sh'
alias gb='df -h | grep /dev/nvme0n1p1'
alias cl='sudo nix-collect-garbage -d'
alias v='nvim'
alias reb='sudo nixos-rebuild switch --flake ~/Nix#nixos'
alias pkg='nvim ~/Nix/desktop/soft/pkgs.nix'
alias minecraft='appimage-run ~/.local/share/bin/PineconeMC-Linux-x86_64.AppImage'
alias l='yazi'

