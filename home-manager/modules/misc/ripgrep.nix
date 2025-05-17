{
  config,
  lib,
  pkgs,
  ...  
}: {
  # ripgrep - High-performance text search tool
  home.packages = with pkgs; [
    ripgrep  # Fast code and text search tool
  ];
}