{
  config,
  lib,
  pkgs,
  ...
}: {
  # k9s configuration
  home.packages = with pkgs; [
    k9s
  ];
}
