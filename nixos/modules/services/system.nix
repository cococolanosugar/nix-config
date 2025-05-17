# Basic system configuration
{
  config,
  lib,
  pkgs,
  ...
}: {
  # Set your time zone
  time.timeZone = "Asia/Shanghai";

  # Select internationalisation properties
  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "zh_CN.UTF-8/UTF-8"
    ];
    inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-chinese-addons
        fcitx5-configtool
      ];
    };
  };

  # Configure console keymap
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  # Enable CUPS to print documents
  services.printing.enable = true;

  # Enable automatic system upgrades
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
  };

  # Enable automatic garbage collection
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
}