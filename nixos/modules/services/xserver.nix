# X server and display configuration
{
  config,
  lib,
  pkgs,
  ...
}: {
  # Enable the X11 windowing system
  services.xserver = {
    enable = true;
    
    # Configure keymap
    layout = "us";
    xkbVariant = "";

    # Enable touchpad support
    libinput = {
      enable = true;
      touchpad = {
        tapping = true;
        naturalScrolling = true;
        middleEmulation = true;
      };
    };

    # Enable display manager
    displayManager = {
      gdm = {
        enable = true;
        wayland = true;
      };
    };

    # Enable desktop environment
    desktopManager = {
      gnome = {
        enable = true;
      };
    };
  };

  # Enable GNOME services
  services.gnome = {
    core-utilities.enable = true;
    gnome-keyring.enable = true;
  };

  # Enable dconf
  programs.dconf.enable = true;
}