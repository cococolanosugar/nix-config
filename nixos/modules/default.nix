# Main system configuration module
{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware
    ./services
    ./users
  ];

  # System-wide packages
  environment.systemPackages = with pkgs; [
    # Basic system utilities
    wget
    curl
    git
    vim
    htop
    tree
    unzip

    # Development tools
    gnumake
    gcc
    python3

    # System management
    lm_sensors
    usbutils
    pciutils
  ];
}