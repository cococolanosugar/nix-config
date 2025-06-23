{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # GoFrame
    gf.url = "github:cococolanosugar/gf/feature/nix-support";
    # Go-Zero
    # goctl.url = "github:cococolanosugar/go-zero/feature/nix-support";
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs:
    let
      username = "your-username"; # FIXME replace with your username
      hostname = "your-hostname"; # FIXME replace with your hostname
      inherit (self) outputs;
    in {
      # NixOS configuration entrypoint
      nixosConfigurations = {
        ${hostname} = nixpkgs.lib.nixosSystem {
          specialArgs = {inherit inputs outputs username hostname;};
          modules = [ ./nixos/configuration.nix ];
        };
      };

      # Standalone home-manager configuration entrypoint
      homeConfigurations = {
        "${username}@${hostname}" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          extraSpecialArgs = {inherit inputs outputs username hostname;};
          modules = [ ./home-manager/home.nix ];
        };
      };
    };
}
