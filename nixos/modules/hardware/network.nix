# Network configuration
{
  config,
  lib,
  pkgs,
  ...
}: {
  networking = {
    networkmanager.enable = true;
    # Configure firewall
    firewall = {
      enable = true;
      allowPing = true;
      # Open ports in the firewall
      allowedTCPPorts = [ 80 443 ];
      allowedUDPPorts = [ ];
    };
  };

  # Enable the OpenSSH daemon
  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };
}