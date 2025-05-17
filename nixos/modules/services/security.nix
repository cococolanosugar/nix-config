# Security configuration
{
  config,
  lib,
  pkgs,
  ...
}: {
  # Enable sudo and basic security settings
  security = {
    sudo = {
      enable = true;
      wheelNeedsPassword = true;
    };

    # PAM configuration
    pam = {
      services = {
        login.enableGnomeKeyring = true;
      };
    };
  };

  # Enable polkit for privilege escalation
  security.polkit.enable = true;

  # Configure user session limits
  security.pam.loginLimits = [
    {
      domain = "@wheel";
      type = "soft";
      item = "nofile";
      value = "524288";
    }
    {
      domain = "@wheel";
      type = "hard";
      item = "nofile";
      value = "1048576";
    }
  ];
}