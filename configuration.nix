{ ... }:
{
	imports = [
		./hardware-configuration.nix
		./hardware/laptop.nix
		./hardware/boot.nix
		./modules/net.nix
		./modules/user.nix
		./modules/conf.nix
		./desktop/soft/pkgs.nix
		./desktop/soft/pipewire.nix
		./desktop/soft/nixvim.nix
		./modules/sddm.nix
		./desktop/wm/niri.nix
	];

	system.stateVersion = "26.05";
}
