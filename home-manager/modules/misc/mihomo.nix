{
  config,
  lib,
  pkgs,
  ...  
}: {
  home.packages = with pkgs; [
    mihomo
  ];

  # Ensure ~/.config/mihomo directory exists
  home.file = {
    ".config/mihomo/.keep".text = "";
  };
}