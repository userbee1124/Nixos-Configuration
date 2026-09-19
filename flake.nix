{
  description = "NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    mangowm = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia.url = "github:noctalia-dev/noctalia";
       
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
     silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
   };  
  };
     

  outputs = { self, nixpkgs, mangowm, noctalia, nixvim, silentSDDM,  ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit mangowm noctalia nixvim silentSDDM;
        };

        modules = [
          ./hardware-configuration.nix
          ./configuration.nix
          ./desktop/soft/nixvim.nix
	  ./modules/sddm.nix

          mangowm.nixosModules.mango
          noctalia.nixosModules.default
	  nixvim.nixosModules.nixvim
        ];
      };
    };
}
