# System services configuration module
{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./security.nix
    ./system.nix
    ./xserver.nix
  ];
}