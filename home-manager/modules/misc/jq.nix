{
  config,
  lib,
  pkgs,
  ...  
}: {
  # fzf - Lightweight and flexible command-line JSON processor
  home.packages = with pkgs; [
    jq  # Lightweight and flexible command-line JSON processor
  ];
}