{
  config,
  lib,
  pkgs,
  ...  
}: {
  home.packages = with pkgs; [
    mihomo
  ];

  # Ensure configuration directory exists
  home.file = {
    ".config/mihomo" = {
      recursive = true;
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/mihomo";
    };
  };
}