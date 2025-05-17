# User management configuration
{
  config,
  lib,
  pkgs,
  ...
}: {
  # Define user accounts
  users.users.xushc = {
    isNormalUser = true;
    description = "xushc";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
  };

  # Enable zsh system-wide
  programs.zsh = {
    enable = true;
  };

  # Enable docker for development
  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
  };
}