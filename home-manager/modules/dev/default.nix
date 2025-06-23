{
  config,
  lib,
  pkgs,
  ...  
}: {
  imports = [
    ./git.nix
    ./neovim.nix
    ./golang.nix
    ./helix.nix
    ./devbox.nix
    ./uv.nix
    ./fnm.nix
    ./k9s.nix
  ];
}