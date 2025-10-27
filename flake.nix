{
  description = "My simple NixOS flake"; # come up with better descriptiom

  inputs = {
    # NixOS official package source
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

    # home-manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # stylix
    #stylix = {
     # url = "github:nix-community/stylix";
     # inputs.nixpkgs.follows = "nixpkgs";
    #};

    # zen browser
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ...}@inputs:

    let
      system = "x86_64-linux";
    in {
    
      # system hostname
      nixosConfigurations.dedenne = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
          inherit inputs system;
        };
        modules = [
          #stylix.nixosModules.stylix
          ./nixos/configuration.nix
        ];
      };

      homeConfigurations.phyrria = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./home-manager/home.nix];
      };
    };
 }  
