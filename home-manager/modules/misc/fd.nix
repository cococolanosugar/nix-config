{
  config,
  lib,
  pkgs,
  ...  
}: {
  # fd - Modern find replacement tool
  home.packages = with pkgs; [
    fd  # Simple, fast and user-friendly find replacement tool
  ];
}