{
  config,
  lib,
  pkgs,
  ...  
}: {
  # fzf - Fuzzy finder tool
  home.packages = with pkgs; [
    fzf  # Powerful command-line fuzzy finder tool
  ];
}