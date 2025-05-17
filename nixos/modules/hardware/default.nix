# Hardware configuration module
{
  config,
  lib,
  pkgs,
  ...  
}: {
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./network.nix
  ];
}