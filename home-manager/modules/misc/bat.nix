{
  config,
  lib,
  pkgs,
  ...  
}: {
  # bat - Enhanced cat replacement tool
  home.packages = with pkgs; [
    bat  # A cat replacement with syntax highlighting and Git integration
  ];
}